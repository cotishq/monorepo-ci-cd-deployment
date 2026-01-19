import { prismaClient } from "db/client"

export async function Home() {
const users = await prismaClient.user.findMany();
  return (
    <div >
      {JSON.stringify(users)}
    </div>
  );
}
