.class final Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LocalLifecycleOwner.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;

    invoke-direct {v0}, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;-><init>()V

    sput-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;->INSTANCE:Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;

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
.method public final invoke()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 63
    const-string v0, "CompositionLocal LocalLifecycleOwner not present"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt$LocalLifecycleOwner$1$1;->invoke()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    return-object p0
.end method
