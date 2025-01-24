.class public final Lco/aospa/dolby/xiaomi/DolbyTileService;
.super Landroid/service/quicksettings/TileService;
.source "DolbyTileService.kt"


# instance fields
.field private final dolbyController$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    .line 16
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyTileService$dolbyController$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/DolbyTileService$dolbyController$2;-><init>(Lco/aospa/dolby/xiaomi/DolbyTileService;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyTileService;->dolbyController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;
    .locals 0

    .line 16
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyTileService;->dolbyController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/DolbyController;

    return-object p0
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 28
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyTileService;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v0

    invoke-virtual {v0}, Lco/aospa/dolby/xiaomi/DolbyController;->getDsOn()Z

    move-result v0

    .line 29
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyTileService;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lco/aospa/dolby/xiaomi/DolbyController;->setDsOn(Z)V

    .line 30
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    invoke-virtual {v1, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 32
    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 34
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    return-void
.end method

.method public onStartListening()V
    .locals 2

    .line 19
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 20
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyTileService;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v1

    invoke-virtual {v1}, Lco/aospa/dolby/xiaomi/DolbyController;->getDsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 21
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyTileService;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v1

    invoke-virtual {v1}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x7f1101ab

    invoke-virtual {p0, v1}, Landroid/service/quicksettings/TileService;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 24
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    return-void
.end method
