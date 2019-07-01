Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D3A5C347
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jul 2019 20:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urESitaWca/XF+C1Ki3ZBeITCC259lLEiGHJbVlYC5A=; b=qsU/fzCneVY32W
	a5ZjL4sMP8Z2h5BYCNjbJlcO9Q6kMIHIgJ9QUmYLpUbzqidTv4xKh6NTTIis0K79u4Q3FWsLlEEDU
	4upCaluio6N4NtUSh5AV+ohUdZQVDfbfbC0Vg+F3t7mCdaC5Begch5XPS038UbvAE64jsKwGqAjpH
	GEenBizGSKV2alvl+5CZ0V9OnoYk1+KXJOLnJzeTYZcHKo9fLam0zcMAFMHIXNT5bKVSHUWd1Aanp
	XRrRK+OGpw543zWH2baxAGtl2N2tPe607arJrAmAyFkGDw+ruzSmCIEqxb2qdlmzjw1CiNisB3wXX
	JcHeMz2eWcWMlHzfy7hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi1Sw-0004WS-OR; Mon, 01 Jul 2019 18:55:50 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi1Ss-0004TT-Bb
 for linux-riscv@lists.infradead.org; Mon, 01 Jul 2019 18:55:47 +0000
Received: by mail-io1-xd43.google.com with SMTP id m24so31269342ioo.2
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jul 2019 11:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=RJ0nEuxA5ZfGEtI2ORfLwcWi8vWMBFVOAlEHomBChyQ=;
 b=HbzLSATlu0bOPE6tk/xnT9HDbbVtyy45AYUGmkUYAX6YsI55Lpn71MXmredYkGWMbq
 1VDR9JEMs83A5H6kwLxkMrdr44fypQJHUNuTDthZLSWTaTyEibYd0g2IUL2UbrIo1tcN
 vXYVBHOzPTaZlFut6jN8aNqd4M2DQbXo0H2btfX9eCdhG1WbruSR2gRKWR38BsjypdHc
 2sLzgCevrNW8pEQM6BKC4Fr9c+vwXxv6Lw202eSNQgMQB4RNLkGrVAa2JfAzn6+a1oND
 fX186svC9PpMypUq4VhzVOmMN0oIsPB/0BdKcPV2A9uIUyNo+FksHyv5Qu0Sl/eP4FUs
 L9OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=RJ0nEuxA5ZfGEtI2ORfLwcWi8vWMBFVOAlEHomBChyQ=;
 b=OEUTVUb7PAMQ8NFOZY3hugih9Txjianz+dkwFAPsLEVea7AZJ6ouLoCGww84+fXbAd
 pBIZzLc2Ju34cnvvdKDDsvfQX+kaF0e8HacEfCB2dpKDO6SNl9IAlI4ZCg972p/b5AUI
 srMAP7kvO2wBG7eFxURRPGw7l91glNh48HbLNnwCK5aSv2W9qXpMIsiVpeiwCYwEQZ1z
 PS73fNbEhQLl0K4/+IzF5+SeComgztIyeeedKF1rggW9NmmWnhX3syYz4ut+YtFX/mns
 piEk6OZDrQ01d52vM0qVxcJrucXnAuXKl5/CGYr2RCRfAstPprhD5OU8jgon88ZaGur0
 tW3g==
X-Gm-Message-State: APjAAAViB7hE5DPgYOfgvJjC4VCK7VjfDxqRDdNdQ6PfOarBNt04J6Pz
 +q4zBArLwBqIYVaiVSyu5G8o/A==
X-Google-Smtp-Source: APXvYqwL+eY8ECnhe7jn5wjvS3/54CfYE6LIGPJ7PbOYEamcU5iLZxD/gx7lxHGv1GuBLS9usOFDKA==
X-Received: by 2002:a02:bb08:: with SMTP id y8mr2038974jan.51.1562007345538;
 Mon, 01 Jul 2019 11:55:45 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 r139sm24862445iod.61.2019.07.01.11.55.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 11:55:45 -0700 (PDT)
Date: Mon, 1 Jul 2019 11:55:44 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V
In-Reply-To: <5f31cb3c576bdbd89665614582af66d04ece8f29.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1907011154310.3867@viisi.sifive.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907011143520.3867@viisi.sifive.com>
 <5f31cb3c576bdbd89665614582af66d04ece8f29.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_115546_397294_0AF9B44C 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "will@kernel.org" <will@kernel.org>, "mingo@kernel.org" <mingo@kernel.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "morten.rasmussen@arm.com" <morten.rasmussen@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "johan@kernel.org" <johan@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jeremy.linton@arm.com" <jeremy.linton@arm.com>,
 "ottosabart@seberm.com" <ottosabart@seberm.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 1 Jul 2019, Atish Patra wrote:

> On Mon, 2019-07-01 at 11:44 -0700, Paul Walmsley wrote:
> > 
> > Looks like patches 1, 6, and 7 are missing your Signed-off-by:.  Can I 
> > add those?
> > 
> Sure. 
> 
> Is it a common practice to add "Signed-off-by:" the sender even if the
> sender has not touched the patch at all?

Yes, see section 11(c) here:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n418

The main factor here is that you collected and resent the patches - thus 
you're in the patch submission chain.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
