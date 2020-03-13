Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3525A184D55
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 18:13:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=em6h2/ugFXlpHK/qOniX5wMYORxkvlGHl/yxmwOyMOM=; b=MP0AKxq5Pu3h6UV30dYNmIeZp
	4cGF3hcPaginEI2aX30WL7WE36P/YIvxlje5MSmAtgpI4JRqrjbkU3aRc8ifCsO0R0/bm5K4W7iFM
	8DD6KNgKVM2xvZX+QPnQ4bHiNd2NKSQ6+BZvkYSTHxUGToUT+HZZ135DCw6wrqZ6p8gxhYSnktcPc
	Ek3Rqf+xWWu8p2t7EZyviAb4hwSM1naMsTjINC0FRb/FM9bTkbrrOg0Mq3/C9eVANDXYU1jG0WEi1
	tsjdOEfU/0CAE6u//T78JAfYPACfHPTq1Y269caI/2PCHWQe7naYTBBl+cVROdoE0iksFw8PjrBKB
	Acx8sSBGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnrt-0007Wo-PL; Fri, 13 Mar 2020 17:13:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnrp-0007WU-HF
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 17:13:04 +0000
Received: by mail-wr1-x444.google.com with SMTP id l18so13017274wru.11
 for <linux-riscv@lists.infradead.org>; Fri, 13 Mar 2020 10:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=em6h2/ugFXlpHK/qOniX5wMYORxkvlGHl/yxmwOyMOM=;
 b=Y2gDiDJKuZPB+puJjyXDpfGxad8/PlH9uV47+5RornDRMFWaAEBcAucS8AxUvhysej
 dTt0m9hjJdsGNwEVzl3+h40RBstuPRLQayYJsTgdEaOD0+KbUwdx/QUT3ehclYrCJa9Q
 0KnzhI0XPvsAsSX/x2QNGI0sH7DyioPUSdC+bvbENKcQVhT7X8Wlq5Q2pm6OGt21LkYZ
 dGVvnL72arfSNWdtcMQ29qHL8JQTBsVgGX46MMJLVqSh63jBuR+zS8h/ldhJCKFqPRnu
 RlF2UA5vQmwOGwOvRemPLLt5V4c58pP1NOdeuP08W+0eUKroUMNUwDoxYyPOT78qLg+G
 8vkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=em6h2/ugFXlpHK/qOniX5wMYORxkvlGHl/yxmwOyMOM=;
 b=OrvtSNKVEcDaJAYulJfIWMNMuRNaD4mD7wpO1+bTs7b2nNGeAJC2QUEme3m23PVp35
 oB5X2bE8WpsxTNlStMj/G1ZP5GQH8bmyRfz45GGpiTjaAUDTAag4VxldDjZ5yhdfXOn+
 PQc0cIFr5DGncUOQRB6JEyGF2IaIMXqYo2U9BF5sH6lzdqV+QjN+WSh/U5TnsB6b/oQG
 OJYPZXZh69dMtzQe2Xda20wFWZkV8grjXWODnp2a2AIz4eaVw5x5j7dqa9TK6MpE5vD/
 G6x9ncg7OzS+KN06PoEwULu1SDFyzPacOOsrJeQzxELS2ulIvv0D+4/e7dP3WHEXl4Rv
 B0yg==
X-Gm-Message-State: ANhLgQ3SG0NS/5UbTWMMd+A3MbZ1RZHI6ii/To9xgaDuEIpGYv4s1YN+
 1BKwAMehxcqgUub8s+LURIRnG2WRa0uPDXVTFpFm1pk=
X-Google-Smtp-Source: ADFU+vubUCETLUhMg9GPZ4YBIXta5s/cD+OoN+nS06Auhmg6xQlBmxBDU4Yb/YZSGtlqc5ndcZB41AGi4PEUAf+WH7I=
X-Received: by 2002:adf:f584:: with SMTP id f4mr19567041wro.77.1584119580054; 
 Fri, 13 Mar 2020 10:13:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200313091639.87862-1-damien.lemoal@wdc.com>
 <20200313091639.87862-10-damien.lemoal@wdc.com>
In-Reply-To: <20200313091639.87862-10-damien.lemoal@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Fri, 13 Mar 2020 10:12:48 -0700
Message-ID: <CAOnJCU+x9kdQftaS1VTLoaj33Ps-v_PncubDtgGfDdsnoCd4mQ@mail.gmail.com>
Subject: Re: [PATCH v3 9/9] riscv: Do not initialize PMP on Kendryte SoC
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_101301_723642_7E3F2E4C 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 2:17 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> Commit c68a9032299e ("riscv: set pmp configuration if kernel is running
> in M-mode") added PMP initialization to M-Mode. While this patch is
> valid for any SoC following the ratified riscv specifications, the
> Kendryte K210 SoC is based on earlier unstable specifications and does
> not seem to support PMP initialization (the SoC crashes if CSR_PMPADDR0
> or CSR_PMPCFG0 are accessed).
>
> Since all physical memory access works fine on this SoC without any
> explicit PMP initialization, avoid the SoC crash by not touching the
> PMP CSRs.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/kernel/head.S | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 52ed11b4fda6..1a5defdc33d2 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -58,11 +58,17 @@ _start_kernel:
>         /* Reset all registers except ra, a0, a1 */
>         call reset_regs
>
> -       /* Setup a PMP to permit access to all of memory. */
> +       /*
> +        * For M-mode, setup PMP to permit access to all of memory.
> +        * This should however not be done for the  Kendryte K210 SoC as this
> +        * causes a crash (this SoC follows older unstable specification).
> +        */
> +#ifndef CONFIG_SOC_KENDRYTE
>         li a0, -1
>         csrw CSR_PMPADDR0, a0
>         li a0, (PMP_A_NAPOT | PMP_R | PMP_W | PMP_X)
>         csrw CSR_PMPCFG0, a0
> +#endif
>
>         /*
>          * The hartid in a0 is expected later on, and we have no firmware
> --
> 2.24.1
>
>

Reviewed-by: Atish Patra <atish.patra@wdc.com>
-- 
Regards,
Atish

