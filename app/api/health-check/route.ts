export const dynamic = "force-static";

export async function GET() {
  return Response.json("OK", {
    status: 200,
  });
}
