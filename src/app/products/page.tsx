import {
  Box,
  Button,
  Card,
  CardBody,
  CardFooter,
  Container,
  Divider,
  Grid,
  Heading,
  Image,
  Stack,
  Text,
} from "@chakra-ui/react";
import prisma from "@/lib/prisma";
import { rezept } from "@prisma/client";
import Link from "next/link";

export const dynamic = "force-dynamic";

export default async function ProductsPage() {
  const products = await prisma.rezept.findMany({});
  return (
    <Container maxW="5xl">
      <Grid gridTemplateColumns={"1fr 1fr"} gap={6}>
        {products.map((product) => {
          return <ProductCard key={product.id} product={product} />;
        })}
      </Grid>
    </Container>
  );
}

function ProductCard({ product }: { product: rezept }) {
  return (
    <Card>
      <CardBody>
        <Image src={`/${product.id}.jpg`} alt={product.id} borderRadius="lg" />
        <Heading size="md">{product.bezeichnung}</Heading>
        <Text>9,95 €</Text>
      </CardBody>
      <Divider />
      <CardFooter>
        <Link href={`/products/${product.id}`}>
          <Button variant="solid">Kaufen</Button>
        </Link>
      </CardFooter>
    </Card>
  );
}
