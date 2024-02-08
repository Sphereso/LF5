import prisma from "@/lib/prisma";
import {
  Accordion,
  AccordionButton,
  AccordionItem,
  AccordionPanel,
  Box,
  Card,
  CardBody,
  CardHeader,
  Container,
  Flex,
  Heading,
  Spacer,
  Stack,
  Text,
} from "@chakra-ui/react";
import Link from "next/link";

export const dynamic = "force-dynamic";

export default async function OrdersPage() {
  const orders = await prisma.bestellung.findMany({
    include: {
      kunde: {
        include: {
          adresse: true,
        },
      },
      rezepteinbestellung: {
        include: {
          rezept: true,
        },
      },
    },
  });
  return (
    <Container maxW="5xl">
      <Card>
        <CardHeader>
          <Heading size="lg">Bestellungen</Heading>
        </CardHeader>
        <CardBody>
          <Accordion>
            {orders.map((order) => {
              return (
                <AccordionItem key={order.id}>
                  <AccordionButton>
                    <Flex
                      direction="row"
                      width="100%"
                      justifyContent="space-between"
                    >
                      <Box>{order.bestellungdatum.toLocaleDateString()}</Box>
                      <Box>{`${order.kunde.vorname} ${order.kunde.name}`}</Box>
                    </Flex>
                  </AccordionButton>
                  <AccordionPanel>
                    <Flex gap={2}>
                      <Box flex="1">
                        <Card variant="filled">
                          <Heading size="sm">Artikel</Heading>
                          {order.rezepteinbestellung.map((rib) => {
                            return (
                              <Text
                                key={rib.rezeptid}
                              >{`${rib.menge}x ${rib.rezept.bezeichnung}`}</Text>
                            );
                          })}
                        </Card>
                      </Box>
                      <Card p={2} variant="filled">
                        <Stack>
                          <Heading size="sm">Straße</Heading>
                          <Text>{order.kunde.adresse.strasse}</Text>
                          <Heading size="sm">Stadt</Heading>
                          <Text>{order.kunde.adresse.stadt}</Text>
                          <Heading size="sm">PLZ</Heading>
                          <Text>{order.kunde.adresse.plz}</Text>
                        </Stack>
                      </Card>
                    </Flex>
                  </AccordionPanel>
                </AccordionItem>
              );
            })}
          </Accordion>
        </CardBody>
      </Card>
    </Container>
  );
}
