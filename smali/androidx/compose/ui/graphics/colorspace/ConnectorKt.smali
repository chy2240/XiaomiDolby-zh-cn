.class public abstract Landroidx/compose/ui/graphics/colorspace/ConnectorKt;
.super Ljava/lang/Object;
.source "Connector.kt"


# static fields
.field private static final Connectors:Landroidx/collection/MutableIntObjectMap;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 315
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getId$ui_graphics_release()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getId$ui_graphics_release()I

    move-result v2

    sget-object v3, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getPerceptual-uksYyKA()I

    move-result v4

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    shl-int/lit8 v2, v4, 0xc

    or-int v4, v1, v2

    .line 316
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/Connector;->Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->identity$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object v5

    .line 317
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getId$ui_graphics_release()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getId$ui_graphics_release()I

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getPerceptual-uksYyKA()I

    move-result v6

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    shl-int/lit8 v2, v6, 0xc

    or-int v6, v1, v2

    .line 318
    new-instance v7, Landroidx/compose/ui/graphics/colorspace/Connector;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getPerceptual-uksYyKA()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v7, v1, v2, v8, v9}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 319
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getId$ui_graphics_release()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getId$ui_graphics_release()I

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getPerceptual-uksYyKA()I

    move-result v8

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    shl-int/lit8 v2, v8, 0xc

    or-int v8, v1, v2

    .line 320
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Connector;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getPerceptual-uksYyKA()I

    move-result v3

    invoke-direct {v1, v2, v0, v3, v9}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v1

    .line 314
    invoke-static/range {v4 .. v9}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf(ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ConnectorKt;->Connectors:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public static final getConnectors()Landroidx/collection/MutableIntObjectMap;
    .locals 1

    .line 313
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ConnectorKt;->Connectors:Landroidx/collection/MutableIntObjectMap;

    return-object v0
.end method
