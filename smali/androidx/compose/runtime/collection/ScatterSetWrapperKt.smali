.class public abstract Landroidx/compose/runtime/collection/ScatterSetWrapperKt;
.super Ljava/lang/Object;
.source "ScatterSetWrapper.kt"


# direct methods
.method public static final wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;
    .locals 1

    .line 38
    new-instance v0, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/collection/ScatterSetWrapper;-><init>(Landroidx/collection/ScatterSet;)V

    return-object v0
.end method
