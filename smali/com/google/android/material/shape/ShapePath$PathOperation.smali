.class public abstract Lcom/google/android/material/shape/ShapePath$PathOperation;
.super Ljava/lang/Object;
.source "ShapePath.java"


# instance fields
.field protected final matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public abstract applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
.end method
