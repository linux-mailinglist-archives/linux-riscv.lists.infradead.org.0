Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6598A1ADD80
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Apr 2020 14:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hw3zBq2iflGKeF6TIA06foptPhPCqmQ4gALSXVPDoYo=; b=Of7DoHM+54vxAonQyoRdfakDS
	qJX59TpiNoEcvBh1lCnL7P2+DvQLXC/X7I2ABCTtGUTgRPnhq7kn88F0j/vRWQrdlDwZX8hDuQ2mI
	WDiXuz++m71stH4qX9MHn2uxLFqMjaIfSaUfxmn+OlfMb4KmizxCyoqJlGxBberIeU+A5hB7F2ds3
	fAAzcH47LT+pdpgqlBvdncFuowRUpOuivMD0TCwjI3lhU6MkIGXgl6EpRtA10TCQOgCpiKwYh7nH0
	bUuo7UTaCyLL1WboIP7Nabpd6axVBKXq3HB9jtXrHWCfTMnX+hROJQBOcOCDbJ/Tn9A14xT2bzOqq
	YjO/QNEKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQId-0000BX-38; Fri, 17 Apr 2020 12:40:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQIZ-0000Ai-Eo
 for linux-riscv@lists.infradead.org; Fri, 17 Apr 2020 12:40:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id g13so839401wrb.8
 for <linux-riscv@lists.infradead.org>; Fri, 17 Apr 2020 05:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hw3zBq2iflGKeF6TIA06foptPhPCqmQ4gALSXVPDoYo=;
 b=jJaoNQrEIBPf8c+ShjvPCVr441gyQQerRqJv93mnrEQA3Xj+pLqdOzATk/Rn2d6mM5
 3QOcSW4fe/9UKaVuVYEHRDrU8RkNrG9QOrLRxAsWHkQQi2tSBQ13I+XF0EQBrqVA3bra
 sIKelGB72/XTdlKCQox25CECzSE17EDwMta1XSkH2DLt217o/7jDjJROmpFDxwtrWNRU
 vHF1nnsGUxzPphnUY7UhD+m7rnI2dyvzQLLjsrqI69ekVOfd3E2mdhSIIQIbXbKphLkq
 I9wQtMALwtQYIyiBTVn0d8qzFf20+E0n3CIBqQ4Ea2FXzt3wIoqvj5evJQ7B3R6Hcd/A
 QQjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hw3zBq2iflGKeF6TIA06foptPhPCqmQ4gALSXVPDoYo=;
 b=YBu9L3Xms+KE7IL5zHQCetWr771j7Jb6uInJXGbFZO/g7//F/BPR8bDX0Gr4CvFZ5B
 Rkj0J3ueJ4cIB/PztDa1weebyiBjup4PbT8lrd/tlNihwd9pU05JQrgS9tVCI9D1NMei
 7S27v+HnxsWqzIs5pbRel8ePaxJhMoPy65dhFx1DsKNccBo7Oz3uu26C06wW3T1Kmwor
 R0gm0ukMPoribux7IQG6Wr3JIxir36qbx+OcJ5xbIxEIeoGFUZv+6Nj8lx5cR0IDN1LP
 M/d8d3r41WdPxJD3ISb0klHo377Eo1iywT+0E83xrVUMUhR1lIO7TliuH3d2h4EgKLXk
 mYNA==
X-Gm-Message-State: AGi0PubE66th0gqs0KXWFzH6Eh5OfySrqIwt79L3J53YKSktuzw+Z+UF
 OVTaA0SVYv1aC7fG0EO/SjZNafQp23gq2U4wWQXmUw==
X-Google-Smtp-Source: APiQypJN6AKoUZezns2JYdhqA8iYyC3VPzV6Le8z1oI9oshNNiKtXSuZACI1oSLtIfdlgPsUtMjg1TAGYQBxVtgnw8M=
X-Received: by 2002:adf:b35c:: with SMTP id k28mr3718749wrd.61.1587127244899; 
 Fri, 17 Apr 2020 05:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200417121222.156422-1-wangkefeng.wang@huawei.com>
In-Reply-To: <20200417121222.156422-1-wangkefeng.wang@huawei.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 17 Apr 2020 18:10:32 +0530
Message-ID: <CAAhSdy2cFnYM4Q03nCUof33KwtfDhefvZVc044ukcjSa+CaYZw@mail.gmail.com>
Subject: Re: [PATCH 1/3] riscv: sbi: Correct sbi_shutdown() and
 sbi_clear_ipi() export
To: Kefeng Wang <wangkefeng.wang@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_054047_566955_0E005D66 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 5:40 PM Kefeng Wang <wangkefeng.wang@huawei.com> wrote:
>
> Fix incorrect EXPORT_SYMBOL().
>
> Fixes: efca13989250 ("RISC-V: Introduce a new config for SBI v0.1")
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  arch/riscv/kernel/sbi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> index 7c24da59bccf..62b10a16c8d7 100644
> --- a/arch/riscv/kernel/sbi.c
> +++ b/arch/riscv/kernel/sbi.c
> @@ -102,7 +102,7 @@ void sbi_shutdown(void)
>  {
>         sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
>  }
> -EXPORT_SYMBOL(sbi_set_timer);
> +EXPORT_SYMBOL(sbi_shutdown);
>
>  /**
>   * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
> @@ -113,7 +113,7 @@ void sbi_clear_ipi(void)
>  {
>         sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
>  }
> -EXPORT_SYMBOL(sbi_shutdown);
> +EXPORT_SYMBOL(sbi_clear_ipi);
>
>  /**
>   * sbi_set_timer_v01() - Program the timer for next timer event.
> --
> 2.20.1
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

