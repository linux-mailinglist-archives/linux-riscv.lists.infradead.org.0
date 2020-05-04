Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5DF1C3253
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 07:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uEr7VDGO1sQzOvtIGcTs52hYhp3KlihYjjFwOGOE52E=; b=lA4pOagme/tT4kNwnsS+mgJB2
	3bew6GSzHbXzHCio8wPmj2hNSOQHnTxLOC5Od6B4JY6rm6ueacOhR7NqrSnMXUTRdv8SQocStQ4Jg
	I3aUFKbAJR9N3ompwHmfoJtNQ6jBtMuefwjb7oW8gO8oAiyAoFfHGeYXMOtYq1/EbsffT2chFiJZp
	d7cqGzak6Z/kl6ecwwAgeBAwBzL1/B/egSMc1x+XGVoj2z12XrDswn8HYb5pjmrBJaPSO6AUHqw3r
	4zidXrwDrkOzBIBi/7P08PDtm/CxwEQW50TXEppJ6H6tWbqp+S0yFNPfoeqJcoaJBTjkkOwVaXFWt
	uWwscUhFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVTmk-0007xS-09; Mon, 04 May 2020 05:36:58 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVTmh-0007x2-J5
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 05:36:57 +0000
Received: by mail-oi1-x243.google.com with SMTP id r25so5691783oij.4
 for <linux-riscv@lists.infradead.org>; Sun, 03 May 2020 22:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uEr7VDGO1sQzOvtIGcTs52hYhp3KlihYjjFwOGOE52E=;
 b=AnMCjUrc0dEBsDtyieZcjRyaWh1ZyG7DB345/RKRwunS9IbLIl18twCJWYDSN1f092
 M+39bCI4yvuMpohhu1PNnD5u4xGLJkdXBH8HGV9aN3NKRyM+x7PhL2wqb7fUdEqfSp2G
 EMFjB0nmBOpmz1FQ5lOB6Gg0RlZuz5dTYZYSHUfdX2CjGWT8Bn11GpCCF6FGOWIzLVlQ
 1mJ/ECtrVccBsw+S6DXsG6y0VmYSx8lOQyhEHD/s8//lfppknEQzqLzgvY59saAigEbN
 4+3P9sKuuzp5/wijfK1HjOZXqjJmmXFr/GsS8M0DI4H2KfG8Wfq/9ZYAQ5NRQlK/BuGf
 kvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uEr7VDGO1sQzOvtIGcTs52hYhp3KlihYjjFwOGOE52E=;
 b=ruWD9Phhx4mfEsSf4mHxzc2a+DtSESIjKPrff1BdpsjEIMSz6CD+sA1gBFhZoZDFS0
 WMxw/qj6t9bBMQl8o4cFIe1KUF1o4xsZlZn+FE7f500dABz29TIqyPW2OwFVlNCD+Lb5
 qjPU8pyVQHPmA04eCY9KreR5ny+8uTp62F0EMns/PhZjKZUJu7VO6Js/8vHi5j/c3RjZ
 UtYKGSiClyj9dVN8/EDALm71vAAeyRM6GRP1UsItoPz3L6udOKZc53agfImyx2CsQV5f
 xjRfGYu6q9ys3pBTZ0lO7G02QMoElVeKrd2VX97WGqWzpNotnMURX/2SuNPIXAgcBRab
 p+BQ==
X-Gm-Message-State: AGi0Pub/1SKlYUo5+JYjOuNyI7LFYXore2Ud0Al951/rZ2M1lxOC4C39
 KbZ4kOcji7WwlBg0oPdF4pR5aTSYTW71aSaQW669vA==
X-Google-Smtp-Source: APiQypIId44/BH5hF7x7zP3LxhrtvZZiDqySLw/fVersvjCbMawM6wZqXjmgu2YmTBc1Sm0vf9NHdFnE+jVSZSHQVss=
X-Received: by 2002:aca:c78d:: with SMTP id x135mr7835649oif.91.1588570614459; 
 Sun, 03 May 2020 22:36:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200504040319.31423-1-atish.patra@wdc.com>
In-Reply-To: <20200504040319.31423-1-atish.patra@wdc.com>
From: Zong Li <zong.li@sifive.com>
Date: Mon, 4 May 2020 13:36:43 +0800
Message-ID: <CANXhq0qrnS5DFC4sTHP1aBKd-32rjvzGBV4O56Fq4JujR5b7PQ@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Remove unused code from STRICT_KERNEL_RWX
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_223655_796405_606656C7 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 4, 2020 at 12:04 PM Atish Patra <atish.patra@wdc.com> wrote:
>
> This patch removes the unused functions set_kernel_text_rw/ro.
> Currently, it is not being invoked from anywhere and no other architecture
> (except arm) uses this code. Even in ARM, these functions are not invoked
> from anywhere currently.
>
> Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/mm/init.c | 16 ----------------
>  1 file changed, 16 deletions(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index b55be44ff9bd..ba60a581e9b6 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -501,22 +501,6 @@ static inline void setup_vm_final(void)
>  #endif /* CONFIG_MMU */
>
>  #ifdef CONFIG_STRICT_KERNEL_RWX
> -void set_kernel_text_rw(void)
> -{
> -       unsigned long text_start = (unsigned long)_text;
> -       unsigned long text_end = (unsigned long)_etext;
> -
> -       set_memory_rw(text_start, (text_end - text_start) >> PAGE_SHIFT);
> -}
> -
> -void set_kernel_text_ro(void)
> -{
> -       unsigned long text_start = (unsigned long)_text;
> -       unsigned long text_end = (unsigned long)_etext;
> -
> -       set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
> -}
> -
>  void mark_rodata_ro(void)
>  {
>         unsigned long text_start = (unsigned long)_text;
> --
> 2.26.2
>

Looks good to me. Thanks.
Reviewed-by: Zong Li <zong.li@sifive.com>

