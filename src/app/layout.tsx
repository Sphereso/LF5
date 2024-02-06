import type { Metadata } from "next";
import { Inter } from "next/font/google";
import { RootProviders } from "./providers";
import {
  Box,
  Center,
  Flex,
  Heading,
  IconButton,
  Spacer,
  Text,
} from "@chakra-ui/react";
import Link from "next/link";

const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "Create Next App",
  description: "Generated by create next app",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <RootProviders>
          <Box
            height="72px"
            top={0}
            zIndex={1}
            position="sticky"
            backgroundColor="white"
            borderBottom="1px solid #E2E8F0"
          >
            <Flex alignItems="center" height="100%" paddingInline={8}>
              <Link href="/products">
                <Heading size="xl">Kraut und Rüben</Heading>
              </Link>
              <Spacer />
              <IconButton
                aria-label="cart"
                icon={
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <circle cx="8" cy="21" r="1" />
                    <circle cx="19" cy="21" r="1" />
                    <path d="M2.05 2.05h2l2.66 12.42a2 2 0 0 0 2 1.58h9.78a2 2 0 0 0 1.95-1.57l1.65-7.43H5.12" />
                  </svg>
                }
              />
            </Flex>
          </Box>
          <Box p={2}>{children}</Box>
        </RootProviders>
      </body>
    </html>
  );
}