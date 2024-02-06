"use client";
import { ChakraProvider } from "@chakra-ui/react";
export function RootProviders({ children }: { children: React.ReactNode }) {
  return <ChakraProvider>{children}</ChakraProvider>;
}
