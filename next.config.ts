import type { NextConfig } from "next";
import { version as packageVersion } from "./package.json";

const nextConfig: NextConfig = {
  /* config options here */
  assetPrefix: `${process.env.CDN_BASE_URL}/${packageVersion}`,
};

export default process.env.NODE_ENV === "production" ? nextConfig : {};
