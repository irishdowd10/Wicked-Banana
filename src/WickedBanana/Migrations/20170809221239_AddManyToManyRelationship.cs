using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace WickedBanana.Migrations
{
    public partial class AddManyToManyRelationship : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Items_Bananas_BananaId",
                table: "Items");

            migrationBuilder.DropIndex(
                name: "IX_Items_BananaId",
                table: "Items");

            migrationBuilder.DropColumn(
                name: "BananaId",
                table: "Items");

            migrationBuilder.CreateTable(
                name: "BananaItems",
                columns: table => new
                {
                    BananaId = table.Column<int>(nullable: false),
                    ItemId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BananaItems", x => new { x.BananaId, x.ItemId });
                    table.ForeignKey(
                        name: "FK_BananaItems_Bananas_BananaId",
                        column: x => x.BananaId,
                        principalTable: "Bananas",
                        principalColumn: "BananaId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_BananaItems_Items_ItemId",
                        column: x => x.ItemId,
                        principalTable: "Items",
                        principalColumn: "ItemId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_BananaItems_BananaId",
                table: "BananaItems",
                column: "BananaId");

            migrationBuilder.CreateIndex(
                name: "IX_BananaItems_ItemId",
                table: "BananaItems",
                column: "ItemId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BananaItems");

            migrationBuilder.AddColumn<int>(
                name: "BananaId",
                table: "Items",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Items_BananaId",
                table: "Items",
                column: "BananaId");

            migrationBuilder.AddForeignKey(
                name: "FK_Items_Bananas_BananaId",
                table: "Items",
                column: "BananaId",
                principalTable: "Bananas",
                principalColumn: "BananaId",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
