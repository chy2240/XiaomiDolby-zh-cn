.class public final Landroidx/compose/ui/text/font/DefaultFontFamily;
.super Landroidx/compose/ui/text/font/SystemFontFamily;
.source "FontFamily.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/font/SystemFontFamily;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 206
    const-string p0, "FontFamily.Default"

    return-object p0
.end method
