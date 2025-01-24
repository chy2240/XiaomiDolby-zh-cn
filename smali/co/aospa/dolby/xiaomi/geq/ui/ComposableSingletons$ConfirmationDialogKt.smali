.class public final Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;
.super Ljava/lang/Object;
.source "ConfirmationDialog.kt"


# static fields
.field public static final INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;

.field public static lambda-1:Lkotlin/jvm/functions/Function3;

.field public static lambda-2:Lkotlin/jvm/functions/Function3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;

    invoke-direct {v0}, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;-><init>()V

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;

    .line 39
    sget-object v0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt$lambda-1$1;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt$lambda-1$1;

    const v1, -0x518a2a7e

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    const v0, -0x3be01b7c

    .line 48
    sget-object v1, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt$lambda-2$1;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt$lambda-2$1;

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;->lambda-2:Lkotlin/jvm/functions/Function3;

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
    sget-object p0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public final getLambda-2$hardware__xiaomi__dolby__android_common__XiaomiDolby()Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 0
    sget-object p0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;->lambda-2:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method
