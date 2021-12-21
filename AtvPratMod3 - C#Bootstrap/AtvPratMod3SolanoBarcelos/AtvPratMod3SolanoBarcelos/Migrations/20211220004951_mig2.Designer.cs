﻿// <auto-generated />
using AtvPratMod3SolanoBarcelos.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace AtvPratMod3SolanoBarcelos.Migrations
{
    [DbContext(typeof(bdCliente))]
    [Migration("20211220004951_mig2")]
    partial class mig2
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.12")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("AtvPratMod3SolanoBarcelos.Models.destino", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("cidade")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("estado")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("nome")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.ToTable("destino");
                });

            modelBuilder.Entity("AtvPratMod3SolanoBarcelos.Models.promocao", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("destinoid")
                        .HasColumnType("int");

                    b.Property<string>("nome")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.HasIndex("destinoid");

                    b.ToTable("promocao");
                });

            modelBuilder.Entity("AtvPratMod3SolanoBarcelos.Models.promocao", b =>
                {
                    b.HasOne("AtvPratMod3SolanoBarcelos.Models.destino", "destino")
                        .WithMany()
                        .HasForeignKey("destinoid")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("destino");
                });
#pragma warning restore 612, 618
        }
    }
}
