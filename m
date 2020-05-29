Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50811E71B8
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 02:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TPcVtJdyE2AYwAhGRH6VQ5jDi/96X6c2mJkTgrsC7yI=; b=PEYxFa2rMkZ4hf0ukQu3Uxyov
	dRaB/zTgT6K8oYAZerL8UAfomywTa8InFvWBvMWHsoNXPBRis3cOisA3SmyIXEzM7V/arp/eES71c
	mDh73r4T9j21RnhdyDAARc0HOAiIO2++sYbsZRRLft2ecVMOkG8XFH6DrLFyhtuvEFfpFCH++yiCU
	ayOtPbhxzQk+bpwoG7KJb0TuAbUF0KQCy0xmabHoJF56GVsQXnGgHdiBscqwtsr7DDqWyXICCweWn
	ilr94ATSllZbermUso+IiijvwaCDOOASnmC2RL3ablj5/0ufuM99A4J9DQS39tMYgjfJ++mNEMk8S
	2OAR2esYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeT4M-0008B0-Ba; Fri, 29 May 2020 00:40:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSy6-0006j6-3U
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 00:33:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id x6so1304861wrm.13
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 17:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TPcVtJdyE2AYwAhGRH6VQ5jDi/96X6c2mJkTgrsC7yI=;
 b=AVIwTbPm1ox7N3P4+ADUQymgyvb83Na+tVpSR19McEIJAuWV/ngmhQ63MElQqZLO6A
 /JzzB47Rj8u4EjlrPav6qUuTLl7l83e7gQahB8miSxNae71iMvhus3BJpjBNyU0TkauQ
 vHbLDsv7Ykg+mXB951uwqWxtQTzyLr7Upjw1o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TPcVtJdyE2AYwAhGRH6VQ5jDi/96X6c2mJkTgrsC7yI=;
 b=CF7btZ8xyGddvmQUwbkaCgYruJxct7E5/K3SSrg+NP2fK0N/5PrAyHNaR8oaVWJszc
 YRdRisT3fMaKM8rYHfeQpixGZ/DuyAZgWGKxcRVNn8cCg6yAlrevEOVd3HmhkNkhiFDj
 Mxwl25yv3zRu+I/OjBALvTfGs8kkbzZChKkPw/QYcXfaZX+3dURTXycndDXqWmxn+/bP
 JZYpUf8k29ByU5X3+zolPOCkaAws43hkP2k5Si2es7JFo4MV8to855nfGp7ZvzgLU17l
 jK2YK80Yb974TE8uJiZsdAfC8StZiMyhsOni9E7OIisY9OY61TSOMaaIngUI7QwrtJkN
 5nXQ==
X-Gm-Message-State: AOAM530rh8D+vi8qUh4GZHon1bu6SxE6jxOiA9yP3UWy5evHTSN+oO97
 AE7WfoGTiRSNispdc7u74HS0n7kWtHy80Qve5uCR
X-Google-Smtp-Source: ABdhPJzqmxeAGA7wTIx1KRRqA0Q/MyC0G6n009aKF+yeH9+jWtsSpTvdDRpC7ou312ux20wgCKKOWiCG5nUb2+g2SM4=
X-Received: by 2002:a05:6000:10c3:: with SMTP id
 b3mr6337909wrx.53.1590712428527; 
 Thu, 28 May 2020 17:33:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200521133301.816665-1-anup.patel@wdc.com>
 <20200521133301.816665-7-anup.patel@wdc.com>
In-Reply-To: <20200521133301.816665-7-anup.patel@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 28 May 2020 17:33:37 -0700
Message-ID: <CAOnJCUJKjgYq5Gii6iVYCUGELShpCaPjG4F0N9CFkgxk_rZG2Q@mail.gmail.com>
Subject: Re: [PATCH v5 6/6] RISC-V: Force select RISCV_INTC for CONFIG_RISCV
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_173350_186655_9FCBAFD3 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 6:34 AM Anup Patel <anup.patel@wdc.com> wrote:
>
> The RISC-V per-HART local interrupt controller driver is mandatory
> for all RISC-V system (with/without MMU) hence we force select it
> for CONFIG_RISCV (just like RISCV_TIMER).
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 822cb0e1a380..2cf0c83c1a47 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -51,6 +51,7 @@ config RISCV
>         select THREAD_INFO_IN_TASK
>         select PCI_DOMAINS_GENERIC if PCI
>         select PCI_MSI if PCI
> +       select RISCV_INTC
>         select RISCV_TIMER
>         select GENERIC_IRQ_MULTI_HANDLER
>         select GENERIC_ARCH_TOPOLOGY if SMP
> --
> 2.25.1
>
>

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish

