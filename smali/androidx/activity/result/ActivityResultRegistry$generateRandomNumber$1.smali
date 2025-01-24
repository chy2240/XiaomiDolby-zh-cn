.class final Landroidx/activity/result/ActivityResultRegistry$generateRandomNumber$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ActivityResultRegistry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/activity/result/ActivityResultRegistry$generateRandomNumber$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/activity/result/ActivityResultRegistry$generateRandomNumber$1;

    invoke-direct {v0}, Landroidx/activity/result/ActivityResultRegistry$generateRandomNumber$1;-><init>()V

    sput-object v0, Landroidx/activity/result/ActivityResultRegistry$generateRandomNumber$1;->INSTANCE:Landroidx/activity/result/ActivityResultRegistry$generateRandomNumber$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 1

    .line 378
    sget-object p0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/high16 v0, 0x7fff0000

    invoke-virtual {p0, v0}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result p0

    const/high16 v0, 0x10000

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 377
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResultRegistry$generateRandomNumber$1;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
