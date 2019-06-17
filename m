Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E551747973
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 06:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHL1LitV4tik0GC/4ss0e10TGvsjOiB/gHXZU/A94kQ=; b=MjRQuYdiwdiMiW
	TE5PvVTRZ3mXb53ZbYon3Yo7EFyXptNS/3ZT5Om1oZ/5ka445JbZaYYGhJArz0bizuOc7hFRoPLaY
	IkUa4jgNL37qt5VnVusRmP+m7oWYiN9gobvsnPxsTvhrNm50QhAohUhh9i8BscuXUIPJihHqr+bs6
	MQ5dD46dqFyiktuADOyY3RvB9an3zhMip2ACCm7NHEfHRyaNzCysWJlpsQqVHBxBc4gyuj/66G4lC
	CMlHY3BYuI/VZAS2rLCwy3qyTZc9hr66dNhQJPVxxPFAGn+46RQcYFgUtdCKLUTageIB8CbO2TMIS
	wVO6UFE2Kym5EcJPUOJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcjUg-0006Ul-Ai; Mon, 17 Jun 2019 04:43:46 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcjUd-0006UG-Nz
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 04:43:45 +0000
Received: by mail-lf1-x144.google.com with SMTP id 136so5447513lfa.8
 for <linux-riscv@lists.infradead.org>; Sun, 16 Jun 2019 21:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QZYnY2hIUSm+INHACfGV3NJI8hXeyeTw8tvqjhCF464=;
 b=MMXvlchVs2Zgrzft62CDXTNlgYLYUhsdEmF5yBBfIzjcxXwgu+TFNl4ZoIwXwi/Cp5
 GZyWocmV8KqP7vfrpu1KZsUdWgrLDSd0gdy43lJi+LlqepOvPg3LRwzIW8VKsHP3Zyex
 nUl+DAZfb/HRyNan1Ndv+uAdskNAK0QOUFJS1qq8hxxYXWax7O1+84TlV70C14ekBJq6
 2Ld/EPFBUYKfF5DBrHjTwoqqpQ8o2NWQU/A8PIF+9etcSJjrhDveAIUKfa2rAObbsj+p
 xspUXSK+ZWwcak0Pe7L+Kb0TaWtpxbwnsJoIEHGhu7U1B34r930XYyfs5qAAq3I80GEW
 ESfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QZYnY2hIUSm+INHACfGV3NJI8hXeyeTw8tvqjhCF464=;
 b=S/xX9tFn0O6B47hzE7BmrThbuPCTBqRkKaS1SsjqnxXbOK+BfZzHSjzirgMeCSA9gs
 XmPzW5vp7HmKqlj+2oGbhjewRjdTA6vKB3ieqo1GYDlBEJsu1o05pMhGLPkU0MwtfK/6
 6sk1zBX9MEU4XRX07eZJvHSbuYOumgDwSKS3LOFkhjaj6p1xESarljlr77bUXmXx0d6w
 McnOatIz0nSGAW03o6BDDXqCbhRL6W1nJPSS8DFJuOwzJ6oC6W4+IgwgNHqmSQRu7AUB
 DpVvfG7RcSJt9HU/Nd6sOhiJtX3v84Jh6w3wm/YqUpCJLurPX35Q24Ox2fC06bXKUTSs
 gP4Q==
X-Gm-Message-State: APjAAAUs8JJEvn7VEaC0+R13sac3wCRm2xMAhmVeCMZqDUyWvbGHJAz8
 +4OgFi3cpR0nZpX63FZVs4JXjN3p4SJg5jX3gY8pRA==
X-Google-Smtp-Source: APXvYqx5atfcvuI00s9Z4mXLRo48akZO/SgAq0T1wCjD9YxY4YsnaLJCxKSL3H3msuEwih+R7uGarFUy+Wtgrp1SkuE=
X-Received: by 2002:a19:5046:: with SMTP id z6mr6335117lfj.185.1560746621318; 
 Sun, 16 Jun 2019 21:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Mon, 17 Jun 2019 10:13:05 +0530
Message-ID: <CAJ2_jOH2X6+CcNCruxX0aeCzPnjcGuv-X1Q4eESsY6PyW1LViA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
To: David Miller <davem@davemloft.net>, devicetree@vger.kernel.org, 
 netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_214343_793688_8C1F215A 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 9:49 AM Yash Shah <yash.shah@sifive.com> wrote:
>
> On FU540, the management IP block is tightly coupled with the Cadence
> MACB IP block. It manages many of the boundary signals from the MACB IP
> This patchset controls the tx_clk input signal to the MACB IP. It
> switches between the local TX clock (125MHz) and PHY TX clocks. This
> is necessary to toggle between 1Gb and 100/10Mb speeds.
>
> Future patches may add support for monitoring or controlling other IP
> boundary signals.
>
> This patchset is mostly based on work done by
> Wesley Terpstra <wesley@sifive.com>
>
> This patchset is based on Linux v5.2-rc1 and tested on HiFive Unleashed
> board with additional board related patches needed for testing can be
> found at dev/yashs/ethernet branch of:

Correction in branch name: dev/yashs/ethernet_v2

> https://github.com/yashshah7/riscv-linux.git
>
> Change History:
> V2:
> - Change compatible string from "cdns,fu540-macb" to "sifive,fu540-macb"
> - Add "MACB_SIFIVE_FU540" in Kconfig to support SiFive FU540 in macb
>   driver. This is needed because on FU540, the macb driver depends on
>   SiFive GPIO driver.
> - Avoid writing the result of a comparison to a register.
> - Fix the issue of probe fail on reloading the module reported by:
>   Andreas Schwab <schwab@suse.de>
>
> Yash Shah (2):
>   macb: bindings doc: add sifive fu540-c000 binding
>   macb: Add support for SiFive FU540-C000
>
>  Documentation/devicetree/bindings/net/macb.txt |   3 +
>  drivers/net/ethernet/cadence/Kconfig           |   6 ++
>  drivers/net/ethernet/cadence/macb_main.c       | 129 +++++++++++++++++++++++++
>  3 files changed, 138 insertions(+)
>
> --
> 1.9.1
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
