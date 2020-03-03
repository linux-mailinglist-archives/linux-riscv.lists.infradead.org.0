Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6141177073
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 08:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhbULqBIdorw/yrEs1cpQIXkzYiAMwapHjsDli7SNmE=; b=MWcnyVdEw7fx0m
	oCg01m+FShO9uEH5uSpSEhNSUtH8cimDJkAHdVAkWieBGC4gah87/OibgnEkZBATHMFiC6aCtJJNG
	gzFR8thHF4Tetagz/YjM+SXJqqsfq9Zwe+wPDMZpfDkMCZr3b9ClAvGxW+LMhLU3bRu22B12rMcZ1
	wtwOXcdLBW16o2bFA+Fvs6eGRmZfzxk1YyKt5a5lxTxMuk+42lpr6CTB+dkfLrKx2maZJr/NnoAAV
	NB23y8R0mEjGASVDDvTYa/R18Jic+EbInMTu+HWF2eLDNwkLzkp1sdimUJKzgXR1w49XANeRh4WDH
	edufqjkPeLyBou9DkSiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92KT-0005V9-Nk; Tue, 03 Mar 2020 07:51:01 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92K8-0005CH-AT
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 07:50:41 +0000
Received: by mail-qk1-x741.google.com with SMTP id 11so2533704qkd.1
 for <linux-riscv@lists.infradead.org>; Mon, 02 Mar 2020 23:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BhbULqBIdorw/yrEs1cpQIXkzYiAMwapHjsDli7SNmE=;
 b=C/AVVaOwRUMOQcM2QkfZkYxtY1XRUW6kdvKrulJevxuG6/m6BCkwSOmh1vkwJEattR
 K2cO/soZ0G4mS1yCz5uEbc8M6tRfZ8hDc/4UgnsLxewUBVG7PW1mtlJmH4yuqpWG2HFL
 0BOR7EE0z6q/Rn2e6tG3jiuBmPno7lfidiNSVBrakQFDxRCFkjk+vUYldkXeS6Wq7El7
 YtONSsi4xMbYIPuq9dTkIRO+aqy/6IJrFYDlKGUOzk2CK7AbniZJYRILqKFV5chwLdJC
 /UhsBX5zUY7GtsKdUX3dfz+Frx7mfxgW4Y5BCoUzACYteQqmkg+82P8OkYuBUbuCv/N5
 g2jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BhbULqBIdorw/yrEs1cpQIXkzYiAMwapHjsDli7SNmE=;
 b=pHjcKvKi2iSu4tkSCb2E2Y5+CJ6h8mJr64322lJEcd9yO6zdqkLxKpfYKiGpf5oOxK
 gKcglfNAs6/T5HboZenbbIIFqUDvG+AMgko7hpfI8+6qr+KmRPEEq6lAOfLNr+z7dLjs
 F7CaJBlUQEkZHrgxn9YiPzh82/m/lJCuPgSu75M1xJczIU2KSjp2Yv+0z2n4jyYkD9f5
 RDHtuV9Z4d6p1qF+DLwLV5+BZxbJWPQRGPRK4o0oS+0hUJm25Q8AtIPumEC8k+e5d6Ot
 p/U7eGvxlY3Pbb00rflsoaB4y59KGbiAvYe+5VdE7W1zzMxZIuAVSZdw078HoBo+aDH+
 6DQQ==
X-Gm-Message-State: ANhLgQ17L4GLa6VehVZdwJ6QDpxNPhYi6Ijc784cXDL1C2DxcZ5gheh5
 CnMbmIJDBa6guVETcWpH6ZUr9IvzkCyskOlyVmU=
X-Google-Smtp-Source: ADFU+vvnqa4SHi+3vaAmK9vIruVCzKAjusAJShsWdCzHBDnIgJIuzP96vxeO5VLCbYsVUfv798aIL4vqMNwbrS/cGx4=
X-Received: by 2002:a37:8046:: with SMTP id b67mr2937683qkd.218.1583221839180; 
 Mon, 02 Mar 2020 23:50:39 -0800 (PST)
MIME-Version: 1.0
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
 <20200303005035.13814-2-luke.r.nels@gmail.com>
In-Reply-To: <20200303005035.13814-2-luke.r.nels@gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 3 Mar 2020 08:50:28 +0100
Message-ID: <CAJ+HfNhSj9ycgh8Y44b_ZruW1A=+W_53fXnCDc488WXSESJ3dw@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 1/4] riscv,
 bpf: move common riscv JIT code to header
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_235040_375771_5BD358AA 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Netdev <netdev@vger.kernel.org>,
 bpf <bpf@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 3 Mar 2020 at 01:50, Luke Nelson <lukenels@cs.washington.edu> wrote=
:
>
> This patch factors out code that can be used by both the RV64 and RV32
> JITs to a common header.
>
> Rename rv_sb_insn/rv_uj_insn to rv_b_insn/rv_j_insn to match the RISC-V
> specification.
>

Thanks for clearing this up!

> Co-developed-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> ---
> We could put more code into a shared .c file in the future (e.g.,
> build_body).  It seems to make sense right now to first factor
> common data structures and helper functions into a header.

Yes, I agree.

> ---
>  arch/riscv/net/bpf_jit.h      | 504 ++++++++++++++++++++++++++++++++++
>  arch/riscv/net/bpf_jit_comp.c | 443 +-----------------------------
>  2 files changed, 505 insertions(+), 442 deletions(-)
>  create mode 100644 arch/riscv/net/bpf_jit.h
>
> diff --git a/arch/riscv/net/bpf_jit.h b/arch/riscv/net/bpf_jit.h
> new file mode 100644
> index 000000000000..6f45f95bc4d0
> --- /dev/null
> +++ b/arch/riscv/net/bpf_jit.h
> @@ -0,0 +1,504 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Common functionality for RV32 and RV64 BPF JIT compilers
> + *
> + * Copyright (c) 2019 Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
> + * Copyright (c) 2020 Luke Nelson <luke.r.nels@gmail.com>
> + * Copyright (c) 2020 Xi Wang <xi.wang@gmail.com>

I'm no lawyer, so this is more of a question; You've pulled out code
into a header, and renamed two functions. Does that warrant copyright
line additions? Should my line be removed?

> + */
> +
> +#ifndef _BPF_JIT_H
> +#define _BPF_JIT_H
> +
> +#include <linux/bpf.h>
> +#include <linux/filter.h>
> +#include <asm/cacheflush.h>
[...]
> +
> +static inline u32 rv_amoadd_w(u8 rd, u8 rs2, u8 rs1, u8 aq, u8 rl)
> +{
> +    return rv_amo_insn(0, aq, rl, rs2, rs1, 2, rd, 0x2f);
> +}
> +
> +#if __riscv_xlen =3D=3D 64

Please remove this. If the inlined functions are not used, they're not
part of the binary. This adds complexity to the code, and without it
we can catch build errors early on!

> +
> +/* RV64-only instructions. */
> +
[...]
> +{
> +    return rv_amo_insn(0, aq, rl, rs2, rs1, 3, rd, 0x2f);
> +}
> +
> +#endif /* __riscv_xlen =3D=3D 64 */

...and this.

Thanks!
Bj=C3=B6rn

