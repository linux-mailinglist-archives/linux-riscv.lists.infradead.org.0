Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4BA1C32B6
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 08:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=306i5OZb3rUOZcrOciamuAcP/j7L85jZXHqSzcVM+8k=; b=ajc+pZuuUtdIqxRb+97dhgF2X
	SxubzH70FDvKSgeYfBTpEJEd1r49jg6vC05id9YMZCTr3RnQ63Ww9d+JHjVnXzGhJ3oCVKM6BIzI1
	m8f7/IDav6xvXFVL2LT8rlNvlRA0Bdj6hTD+P+DpVUx/0xFlOa+KCEUMcndlDaxLVwYlpkXaQDZih
	ft/FpZj1sbJtg7xGGxiwXK/AC8Jm60HCgEFSdYIAUqbRgPFGgFDZx2pMP2U8wZwk7D0WX7DYObk/n
	RIX2rVPV1mIPq65XqVaXMUiL1tPEUEnIrxDAkaEtDjVDjtR+AuZurbNk9AQ9F9Xf9Pi/SFTHtOKx/
	kmEVxwk3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVUXe-0004Pz-Id; Mon, 04 May 2020 06:25:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVUXZ-0004K9-8s
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 06:25:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id g13so19418373wrb.8
 for <linux-riscv@lists.infradead.org>; Sun, 03 May 2020 23:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=306i5OZb3rUOZcrOciamuAcP/j7L85jZXHqSzcVM+8k=;
 b=SKdMUg2m2SJUotPrI5/s9K2BOuYt+BZ7YCjLtRW5CL2yNeZ9E5af4QO0qX+nfoV+Nj
 0YYoVBNzfpzZrh9UBmDSdKU9FHJFuSbpYjc7C72qwtDWY4GHxkqcYNgSW9vRHz3suwC9
 u8RhrsPkKo/K8IJcRr564X2IVspwJhg7OBGGc0glsav76MgsrqDFuTht912eCJ4H6CeD
 IHofHbUTRY6uQ+tEhNe+pwkzM+dtafFw1oRtP9WbxN5pivgrv3b4rhlGtCTcGd/dO6Qj
 T9E2fWzdaOCw1fjh+Fnlb5nmJRqTk95MQkKUIZIvdF4Lxrs5CT+L5JWx5rTBlWkc1zMI
 AkZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=306i5OZb3rUOZcrOciamuAcP/j7L85jZXHqSzcVM+8k=;
 b=NJgxWCOZIqT0NGCMBg7bxlIFWAgq0cH+DA6cDeySK29tXkxNRUuJZpv7lyF6ZaRDnr
 NobdcEc9oiP3YkNITGr1bLdi6ekaAu3ZLbQz0iNVSzedtxWISHY+vY+kYR4taUZIUKhH
 drHQSV62A9PD2VQa34OMtKJ/mqKRjmExx1KfHX97fiTyDkBt+dQA8J4huRiwc2oGWsGs
 5Mewgy+pQTuMybGXL2tZw0p+57IfgUowPbb6yloExKBjom14jyS6Qbce0DKELdMYq9KX
 s2n6kG8LxvBtDnvXxsIB1mFNfBOjfs6+IPQ2rcm1hYMcrvZFignia1YrZEDbhzHwhlwU
 chlA==
X-Gm-Message-State: AGi0PuY/seZFReEV4xTONtdu3dXBroiPND+WncmLm0zH2YknotwMRksu
 H25ny/ir07veDWPUnulhFddKkYn7IJ7LiKb2MqPk2vRbLpk=
X-Google-Smtp-Source: APiQypJvk5cxpJtUzTo7O489Rc340Sftnq7QDcwugQGlOTRxHy+twmDNTb3JcGmVqQn1MWHTHXD+tN+epQfSzrhkz5c=
X-Received: by 2002:adf:fcc8:: with SMTP id f8mr17129641wrs.230.1588573516436; 
 Sun, 03 May 2020 23:25:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200504035448.13893-1-zong.li@sifive.com>
In-Reply-To: <20200504035448.13893-1-zong.li@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 4 May 2020 11:55:05 +0530
Message-ID: <CAAhSdy23jzYvZcmXoX_5F1wDenBQ8NpvNpoO41=aBGHoONPCgg@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: force __cpu_up_ variables to put in data section
To: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_232521_394638_1538A3FE 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Atish Patra <atishp@atishpatra.org>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 4, 2020 at 9:24 AM Zong Li <zong.li@sifive.com> wrote:
>
> Put __cpu_up_stack_pointer and __cpu_up_task_pointer in data section.
> Currently, these two variables are put in bss section, there is a
> potential risk that secondary harts get the uninitialized value before
> main hart finishing the bss clearing. In this case, all secondary
> harts would pass the waiting loop and enable the MMU before main hart
> set up the page table.
>
> This issue happened on random booting of multiple harts, which means
> it will manifest for BBL and OpenSBI which older than v0.6. In OpenSBI
> v0.7, it had included HSM extension, all the secondary harts are
> waiting in firmware, so it could work fine without this change.

Slightly improved text:

This issue happens on random booting of multiple harts, which means
it will manifest for BBL and OpenSBI v0.6 (or older version). In OpenSBI
v0.7 (or higher version), we have HSM extension so all the secondary harts
are brought-up by Linux kernel in an orderly fashion. This means we don't
this change for OpenSBI v0.7 (or higher version).

>
> Changes in v2:
>   - Add commit description about random booting.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> Reviewed-by: Greentime Hu <greentime.hu@sifive.com>
> ---
>  arch/riscv/kernel/cpu_ops.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
> index c4c33bf02369..0ec22354018c 100644
> --- a/arch/riscv/kernel/cpu_ops.c
> +++ b/arch/riscv/kernel/cpu_ops.c
> @@ -15,8 +15,8 @@
>
>  const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
>
> -void *__cpu_up_stack_pointer[NR_CPUS];
> -void *__cpu_up_task_pointer[NR_CPUS];
> +void *__cpu_up_stack_pointer[NR_CPUS] __section(.data);
> +void *__cpu_up_task_pointer[NR_CPUS] __section(.data);
>
>  extern const struct cpu_operations cpu_ops_sbi;
>  extern const struct cpu_operations cpu_ops_spinwait;
> --
> 2.26.1
>

Apart from above, looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

