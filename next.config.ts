import type { NextConfig } from "next";
import { version as packageVersion } from "./package.json";

const nextConfig: NextConfig = {
  /* config options here */
  output: "standalone",
  assetPrefix: `${process.env.CDN_BASE_URL}/${packageVersion}`,
  compiler: {
    removeConsole: {
      exclude: ["error"],
    },
  },
};

export default process.env.NODE_ENV === "production" ? nextConfig : {};
