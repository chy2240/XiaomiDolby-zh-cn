.class public final Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt;
.super Ljava/lang/Object;
.source "EqualizerBands.kt"


# static fields
.field public static final INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt;

.field public static lambda-1:Lkotlin/jvm/functions/Function3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt;

    invoke-direct {v0}, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt;-><init>()V

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt;

    const/4 v0, 0x0

    .line 27
    sget-object v1, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt$lambda-1$1;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt$lambda-1$1;

    const v2, 0x4e77a976

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$hardware__xiaomi__dolby__android_common__XiaomiDolby()Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 0
    sget-object p0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method
