.class public final Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;
.super Ljava/lang/Object;
.source "FontFamilyResolver.kt"


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

.field private static final Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->$$INSTANCE:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

    .line 130
    new-instance v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion$Default$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion$Default$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault$ui_text_release()Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
    .locals 0

    .line 130
    sget-object p0, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->Default:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    return-object p0
.end method
