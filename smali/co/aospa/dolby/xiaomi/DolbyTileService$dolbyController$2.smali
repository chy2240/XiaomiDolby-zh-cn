.class final Lco/aospa/dolby/xiaomi/DolbyTileService$dolbyController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DolbyTileService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lco/aospa/dolby/xiaomi/DolbyTileService;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/DolbyTileService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/DolbyTileService$dolbyController$2;->this$0:Lco/aospa/dolby/xiaomi/DolbyTileService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lco/aospa/dolby/xiaomi/DolbyController;
    .locals 2

    .line 16
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyController;->Companion:Lco/aospa/dolby/xiaomi/DolbyController$Companion;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyTileService$dolbyController$2;->this$0:Lco/aospa/dolby/xiaomi/DolbyTileService;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getApplicationContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lco/aospa/dolby/xiaomi/DolbyController$Companion;->getInstance(Landroid/content/Context;)Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyTileService$dolbyController$2;->invoke()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    return-object p0
.end method
