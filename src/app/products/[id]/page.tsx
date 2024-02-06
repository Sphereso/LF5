import prisma from "@/lib/prisma";
import {
  Button,
  Card,
  CardBody,
  CardHeader,
  Container,
  Divider,
  Grid,
  GridItem,
  Heading,
  Image,
  ListItem,
  NumberDecrementStepper,
  NumberIncrementStepper,
  NumberInput,
  NumberInputField,
  NumberInputStepper,
  Stack,
  Tag,
  Text,
  UnorderedList,
} from "@chakra-ui/react";

export default async function ProductPage({
  params,
}: {
  params: { id: string };
}) {
  const product = await prisma.rezept.findUnique({
    where: {
      id: params.id,
    },
    include: {
      zutateninrezept: {
        include: {
          zutat: true,
        },
      },
      allergenetorezept: {
        include: {
          allergene: true,
        },
      },
      ernaehrungskategorietorezept: {
        include: {
          ernaehrungskategorie: true,
        },
      },
    },
  });
  if (!product) return <div>Error</div>;

  return (
    <Container maxW="5xl">
      <Card>
        <CardHeader>
          <Heading size="lg">{product.bezeichnung}</Heading>
        </CardHeader>
        <CardBody>
          <Grid gridTemplateColumns={"1fr 300px"}>
            <GridItem p={2}>
              <Image src={`/${product.id}.jpg`} alt="img" borderRadius="lg" />
            </GridItem>
            <GridItem p={2}>
              <Card p={2} variant="filled" h="100%">
                <Text>9,95 €</Text>
                <Stack direction="row" gap={2}>
                  <NumberInput min={1} defaultValue={1}>
                    <NumberInputField />
                    <NumberInputStepper>
                      <NumberIncrementStepper />
                      <NumberDecrementStepper />
                    </NumberInputStepper>
                  </NumberInput>
                  <Button colorScheme="blue">Hinzufügen</Button>
                </Stack>
              </Card>
            </GridItem>
            <GridItem p={2} colSpan={2}>
              <Stack direction="column">
                <Heading size="sm">Allergene</Heading>
                <Stack direction="row">
                  {product.allergenetorezept.map((atr) => {
                    return (
                      <Tag key={atr.allergeneid}>
                        {atr.allergene.bezeichnung}
                      </Tag>
                    );
                  })}
                </Stack>
                <Divider />
                <Heading size="sm">Kategorien</Heading>
                <Stack direction="row">
                  {product.ernaehrungskategorietorezept.map((etr) => {
                    return (
                      <Tag key={etr.ernaehrungskategorieid}>
                        {etr.ernaehrungskategorie.bezeichnung}
                      </Tag>
                    );
                  })}
                </Stack>
                <Divider />
                <Heading size="sm">Zutaten</Heading>
                <UnorderedList>
                  {product.zutateninrezept.map((ztr) => {
                    return (
                      <ListItem
                        key={ztr.zutatid}
                      >{`${ztr.menge}x ${ztr.zutat.bezeichnung}`}</ListItem>
                    );
                  })}
                </UnorderedList>
                <Divider />
                <Heading size="sm">Zubereitung</Heading>
                {product.beschreibung.split("\\n").map((s, i) => {
                  return <Text key={i}>{s}</Text>;
                })}
              </Stack>
            </GridItem>
          </Grid>
        </CardBody>
      </Card>
    </Container>
  );
}
