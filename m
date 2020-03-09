Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C54D17DAF7
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 09:33:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7xlimb7+14VsRWTULroWLDoYe5MNhRf/hW9kdn4ynA=; b=QrEnwL+hikimQ9
	1wB5YFCajxD48XiTcvPsV3/Rqhwod7oqaY9u9T8YOPfuCcVrxYdyivsAfG8zKhKJdhIUoKpZijRAV
	QsjOmHmw+fFBCWLY/VN4rCu89A3Ri1asu548bnkMxa9telIYZ3BXisXYPJWExjg/tyJcSnHWGyWa1
	mhPrv0HASJ1lRP1sIJ+NN2q1MrPz9NpWGSxLDWE1DIVLRQo/WxVHRDZrwYtEpkV3P12plRHdXdTBk
	8fj6iXcG8MSdKmjKxzMxF2Uvampx9tdMzFf2h0CDt5t59kQCjVyb4xXhEVA36qLQRfesohHUSzp8Y
	5m3pfGh47xCEu7MXBtXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDr2-0001Wv-D9; Mon, 09 Mar 2020 08:33:40 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDqz-0001W4-21
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 08:33:38 +0000
Received: by mail-lj1-x241.google.com with SMTP id u12so4776402ljo.2
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 01:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=x7xlimb7+14VsRWTULroWLDoYe5MNhRf/hW9kdn4ynA=;
 b=cl7jLwZAYiS2p87vOLDLlGCf0Abnt/3O1W9cElld8AxETfYr+b/g8K/SyHaeFPSfeB
 ksCNyPHO67QTZNP/DpGU+qTTKLciJXdOGKoAWkfxb4hzI9WveEIiOtdLl3cUnhz0KfJZ
 ORq4dWayP7n+01ngXjoafuFaGMLR5ULD8cdvT0nfymGvmBTFiuUB0L99v/xCqjYySs6M
 Vyc9+8MJj9sVWviJl7XrSBARM/D6zCKMnO/8B+mMd1f2pQK1WDo30ijx0Patjq/Dztnw
 36Iwg3jsH1IRskZDlKE83jbFbuAbrti/F19Cva6yEnlRr+EYaPVHyd2mQCBQxD7xPatS
 f7nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=x7xlimb7+14VsRWTULroWLDoYe5MNhRf/hW9kdn4ynA=;
 b=CQwVXR9an16V7uCt8kPSI/TCpYlsmNOlrvAghvtZcfo36Tgw1sW0HWVM42dwJt1MEc
 DHcTN7CjJDdJDdZM6rYV7uCZT1yiEI3HkMlv6sY9KXAfPaJvz1DlEFgtL+j475gl7ZCw
 CqYRIlLGMtrXfyPKE4vIYTgequRnXqZjOuUqvJEBzjCZaIN2DSb3+VrYFPOqQHbfwIZ/
 +Yd8oT0CMyz7Olmx/YIjo+y3TcFR3mxK5WTQvgO6+yscU8mp7ZKw5NnrZaUkCNRJxBJk
 zGrfsJVS2uig8NdtNm11kZTcEmJtfa5ecxUisyZpWAqN1B2cmlmqGiywXT6aJ78CvuhP
 3ilw==
X-Gm-Message-State: ANhLgQ3PPBKdjinM4hjfts0HO6eQVfhss2w/qEFn0PXe39bVkduATFzM
 npdwUw+o65ZbY4QAfDpyqcd2zf61i2k0RiFr2SE=
X-Google-Smtp-Source: ADFU+vtyKCIJo6jtCPk9VjX6HZdynobhnyWOTXoUxsMHP2JK2WsntkNHZpaqJjCn90zenN/hTNYfzUQ7h+37RtUYO0g=
X-Received: by 2002:a2e:8e6f:: with SMTP id t15mr3765603ljk.132.1583742814873; 
 Mon, 09 Mar 2020 01:33:34 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583741997.git.zong.li@sifive.com>
In-Reply-To: <cover.1583741997.git.zong.li@sifive.com>
From: Zong Li <zongbox@gmail.com>
Date: Mon, 9 Mar 2020 16:33:23 +0800
Message-ID: <CA+ZOyagBhhxyJJtLYMk1xzHGVuOo2AAD3CXJoDvgKQdV82GvNg@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] Support strict kernel memory permissions for
 security
To: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_013337_099347_4A32EAF6 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zongbox[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Zong Li <zong.li@sifive.com> =E6=96=BC 2020=E5=B9=B43=E6=9C=889=E6=97=A5 =
=E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=884:22=E5=AF=AB=E9=81=93=EF=BC=9A
>
> The main purpose of this patch series is changing the kernel mapping perm=
ission
> , make sure that code is not writeable, data is not executable, and read-=
only
> data is neither writable nor executable.
>
> This patch series also supports the relevant implementations such as
> ARCH_HAS_SET_MEMORY, ARCH_HAS_SET_DIRECT_MAP,
> ARCH_SUPPORTS_DEBUG_PAGEALLOC and DEBUG_WX.
>
> Changes in v2:
>  - Use _data to specify the start of data section with write permission.
>  - Change ftrace patch text implementaion.
>  - Separate DEBUG_WX patch to another patchset.
>
> Zong Li (9):
>   riscv: add ARCH_HAS_SET_MEMORY support
>   riscv: add ARCH_HAS_SET_DIRECT_MAP support
>   riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
>   riscv: move exception table immediately after RO_DATA
>   riscv: add alignment for text, rodata and data sections
>   riscv: add STRICT_KERNEL_RWX support
>   riscv: add macro to get instruction length
>   riscv: introduce interfaces to patch kernel code
>   riscv: patch code by fixmap mapping
>
>  arch/riscv/Kconfig                  |   6 +
>  arch/riscv/include/asm/bug.h        |   8 ++
>  arch/riscv/include/asm/fixmap.h     |   2 +
>  arch/riscv/include/asm/patch.h      |  12 ++
>  arch/riscv/include/asm/set_memory.h |  41 ++++++
>  arch/riscv/kernel/Makefile          |   4 +-
>  arch/riscv/kernel/ftrace.c          |  13 +-
>  arch/riscv/kernel/patch.c           | 124 ++++++++++++++++++
>  arch/riscv/kernel/traps.c           |   3 +-
>  arch/riscv/kernel/vmlinux.lds.S     |  11 +-
>  arch/riscv/mm/Makefile              |   1 +
>  arch/riscv/mm/init.c                |  45 +++++++
>  arch/riscv/mm/pageattr.c            | 187 ++++++++++++++++++++++++++++
>  13 files changed, 443 insertions(+), 14 deletions(-)
>  create mode 100644 arch/riscv/include/asm/patch.h
>  create mode 100644 arch/riscv/include/asm/set_memory.h
>  create mode 100644 arch/riscv/kernel/patch.c
>  create mode 100644 arch/riscv/mm/pageattr.c
>
> --
> 2.25.1
>
>

The page table dumper support might be considered together, it is
useful to check the page table entry permission. Thanks.
(Refer: https://lore.kernel.org/patchwork/patch/1191018/)

