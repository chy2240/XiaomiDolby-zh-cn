.class final Landroidx/compose/ui/node/OwnerSnapshotObserver$clearInvalidObservations$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OwnerSnapshotObserver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$clearInvalidObservations$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/node/OwnerSnapshotObserver$clearInvalidObservations$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/OwnerSnapshotObserver$clearInvalidObservations$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/OwnerSnapshotObserver$clearInvalidObservations$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$clearInvalidObservations$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    .line 128
    const-string p0, "null cannot be cast to non-null type androidx.compose.ui.node.OwnerScope"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/node/OwnerScope;

    invoke-interface {p1}, Landroidx/compose/ui/node/OwnerScope;->isValidOwnerScope()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/OwnerSnapshotObserver$clearInvalidObservations$1;->invoke(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
