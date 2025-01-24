.class final Landroidx/compose/material3/internal/ChildSemanticsNode$onDetach$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChildParentSemantics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/internal/ChildSemanticsNode$onDetach$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material3/internal/ChildSemanticsNode$onDetach$1;

    invoke-direct {v0}, Landroidx/compose/material3/internal/ChildSemanticsNode$onDetach$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/internal/ChildSemanticsNode$onDetach$1;->INSTANCE:Landroidx/compose/material3/internal/ChildSemanticsNode$onDetach$1;

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
.method public final invoke(Landroidx/compose/ui/node/TraversableNode;)Ljava/lang/Boolean;
    .locals 0

    .line 84
    const-string p0, "null cannot be cast to non-null type androidx.compose.material3.internal.ParentSemanticsNode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/material3/internal/ParentSemanticsNode;

    .line 85
    invoke-virtual {p1}, Landroidx/compose/material3/internal/ParentSemanticsNode;->releaseSemantics()V

    .line 86
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/ChildSemanticsNode$onDetach$1;->invoke(Landroidx/compose/ui/node/TraversableNode;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
