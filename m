Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A48651461A9
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Jan 2020 06:45:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eQFSVaPDWWaPdmtn/1E6R2bbXGcBvm7LU1/hWkgtmnw=; b=hvBY7ZGi98adSMfA2pja+n+IZ
	a1i83TXqvyZD30JYYw+9YC1MbvrV46ufZwkQzMkeooFpzGtjbGsW119GaZiyFvhKRG60BBQgcC6xN
	8T9nFlXZHONSkXSOU+puVC8VzPyq0IS4+oTO2ZMRmb/9XGYstDU27sboR67lSidzAmXRAeayBieQb
	fymA43rkYJstH3OwitHmtO9jTkXgtHB2Bgn6sd6DBBJNhVz7nrZi8wjyJ2zytxK+57wP1e4LcF2Yr
	ClEK8w5ywgrNEjMxxw09bliUOQ+Ia7REoTn/XVvzWUm3O2Uh7uAMCGphPqsIHXEmm9Rokbc8gAosa
	xgyWU9O4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuVIe-0008JN-Cv; Thu, 23 Jan 2020 05:45:04 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuVIZ-0008Eh-9C
 for linux-riscv@lists.infradead.org; Thu, 23 Jan 2020 05:45:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so1676334wrt.6
 for <linux-riscv@lists.infradead.org>; Wed, 22 Jan 2020 21:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eQFSVaPDWWaPdmtn/1E6R2bbXGcBvm7LU1/hWkgtmnw=;
 b=Dl9gZ/DJ2AT3Xr/0RRA+Sbi3NK5lX+C8MO+aZhLy/zYhEKXK3+OILOcnsaxaWZsy2C
 LoxiyVtwZTA4NxUjH0q4ytf13LPxizT+eiZmnyv9IwJ32EFXc1eWAazN+9Xbjmw6JZvl
 XSXVv8yBmxD4tEc2h4jtwDBf8vMeoFJI5hprg1IElHZh0Cvr2Kw7mHDNHKY5z/oc84Fb
 6pTS2P2vplQQdKQLJC5DiWiTjAdBwdow9wCdYplVq0TcXR87xhjJAoKz569QLYvExuaB
 aFxdh4XOTH7jHVeJ0KXHU1cfvuQF9N02WXsVKo+qUfKnWRfBXvhh4ma03KSZA2poBlEi
 PtzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eQFSVaPDWWaPdmtn/1E6R2bbXGcBvm7LU1/hWkgtmnw=;
 b=ec1ETO3ag5mIXnxcXGjrryb0M56pogp8KMOpA7jzOMvC1W4RFkjt1ixxa4IkaLRUnu
 Ape3kztEoTZKztJb16yRARRuthFq+pIkEJS2MRAijtYio2jo1yiMEWJCubRLAkTaFyba
 TwNsgXLMjXsAj+tS3joG4YrlyuwBZO1UukJA3dNjqRah29doPlEytPsKQEsrn7pXzVwR
 Ilvqh1jxc4AvelLLzCCdA8Jcj+tqSvKLQfsThsjMKTCIbduTfNqFeoN8gd9pIOlM/Rno
 lJBdckm5hzA2uD+oj3QsJ2VmBcwvYJ3bwpbVvVMaXspMywjVFdmfW8o/XsVnfNKoPHfJ
 uFZg==
X-Gm-Message-State: APjAAAW6GBXAct4CCeG0C9eyhtRNjM/fDBZ6EB+Co4R821ihuwrqkpKa
 YQG/8pjVn6YpRC8nCnFBeoulSE30//+P007APCAnnQ==
X-Google-Smtp-Source: APXvYqxFx3acHhfHKtlNettHSRNPLnlsI6PD2cRjHTPUId0DG7CREieo2bxT1jP74Wv0NcoVtafTFyY9u+09F5aObD8=
X-Received: by 2002:a5d:620b:: with SMTP id y11mr15177157wru.230.1579758297609; 
 Wed, 22 Jan 2020 21:44:57 -0800 (PST)
MIME-Version: 1.0
References: <20200116143029.31441-1-guoren@kernel.org>
 <20200116143029.31441-2-guoren@kernel.org>
In-Reply-To: <20200116143029.31441-2-guoren@kernel.org>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 23 Jan 2020 11:14:46 +0530
Message-ID: <CAAhSdy3pe4NNS4Gv3dxfe36mMQAB4wis3+wN2OzBmVF7BehK=A@mail.gmail.com>
Subject: Re: [PATCH V2 2/4] riscv: Rename __switch_to_aux -> fpu
To: Guo Ren <guoren@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_214459_323911_7407EF44 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Guo Ren <ren_guo@c-sky.com>, Arnd Bergmann <arnd@arndb.de>,
 Atish Patra <atish.patra@wdc.com>, Andreas Schwab <schwab@linux-m68k.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Bin Meng <bmeng.cn@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 8:01 PM <guoren@kernel.org> wrote:
>
> From: Guo Ren <ren_guo@c-sky.com>
>
> The name of __switch_to_aux is not clear and rename it with the
> determine function: __switch_to_fpu. Next we could add other regs'
> switch.
>
> Signed-off-by: Guo Ren <ren_guo@c-sky.com>
> Cc: Anup Patel <Anup.Patel@wdc.com>
> ---
>  arch/riscv/include/asm/switch_to.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
> index 407bcc96a710..b9234e7178d0 100644
> --- a/arch/riscv/include/asm/switch_to.h
> +++ b/arch/riscv/include/asm/switch_to.h
> @@ -44,7 +44,7 @@ static inline void fstate_restore(struct task_struct *task,
>         }
>  }
>
> -static inline void __switch_to_aux(struct task_struct *prev,
> +static inline void __switch_to_fpu(struct task_struct *prev,
>                                    struct task_struct *next)
>  {
>         struct pt_regs *regs;
> @@ -60,7 +60,7 @@ extern bool has_fpu;
>  #define has_fpu false
>  #define fstate_save(task, regs) do { } while (0)
>  #define fstate_restore(task, regs) do { } while (0)
> -#define __switch_to_aux(__prev, __next) do { } while (0)
> +#define __switch_to_fpu(__prev, __next) do { } while (0)
>  #endif
>
>  extern struct task_struct *__switch_to(struct task_struct *,
> @@ -71,7 +71,7 @@ do {                                                  \
>         struct task_struct *__prev = (prev);            \
>         struct task_struct *__next = (next);            \
>         if (has_fpu)                                    \
> -               __switch_to_aux(__prev, __next);        \
> +               __switch_to_fpu(__prev, __next);        \
>         ((last) = __switch_to(__prev, __next));         \
>  } while (0)
>
> --
> 2.17.0
>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

