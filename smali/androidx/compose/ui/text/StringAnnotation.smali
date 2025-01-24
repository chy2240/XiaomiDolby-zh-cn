.class public final Landroidx/compose/ui/text/StringAnnotation;
.super Ljava/lang/Object;
.source "StringAnnotation.kt"

# interfaces
.implements Landroidx/compose/ui/text/AnnotatedString$Annotation;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/StringAnnotation;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic box-impl(Ljava/lang/String;)Landroidx/compose/ui/text/StringAnnotation;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/StringAnnotation;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/StringAnnotation;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructor-impl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    return-object p0
.end method

.method public static equals-impl(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Landroidx/compose/ui/text/StringAnnotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/StringAnnotation;

    invoke-virtual {p1}, Landroidx/compose/ui/text/StringAnnotation;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static hashCode-impl(Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static toString-impl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringAnnotation(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/ui/text/StringAnnotation;->value:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/compose/ui/text/StringAnnotation;->equals-impl(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/ui/text/StringAnnotation;->value:Ljava/lang/String;

    invoke-static {p0}, Landroidx/compose/ui/text/StringAnnotation;->hashCode-impl(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/ui/text/StringAnnotation;->value:Ljava/lang/String;

    invoke-static {p0}, Landroidx/compose/ui/text/StringAnnotation;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/ui/text/StringAnnotation;->value:Ljava/lang/String;

    return-object p0
.end method
