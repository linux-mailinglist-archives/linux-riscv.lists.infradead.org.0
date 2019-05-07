Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C88167D9
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 18:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7Y5QZK8eTXP9MkCwhyP9cECCa3HPKOz8dmCaaAEDrI=; b=s5Y1K71XRWtZev
	oVyWRYOtweu59VgbYDQ0L6835aO2ZwnaeXclcHaTAwP/pwN+woqVLt5F119tIP2ki3MWiEebyh+CZ
	ZW2CMQ7lErcyTt/3BgnzJctrHGk0Yysg1O6ViVzIGQeFgktDWfMQ9xqSH6xa2U2PY+mYgBJwyexcQ
	dsr+I6mV5t+wGGZ4PVXf3a5JcvW8j/qDRMULxjnE/R4KMgxlLAIFtgIxoiC+fHH99MIKMYPhrOQ2e
	GLyUEo7HWBWkNwE9rlFOKfF9n/oFz2uWG2GFeEbSeA06xoNTg/mQkS1hRDlZ1KghhQxnrPuNCNH7x
	DQ8PfrK+5BCe97bKCdlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO2vr-0004Fp-8t; Tue, 07 May 2019 16:27:07 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO2vo-0004FD-1e
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 16:27:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4364CAEB5;
 Tue,  7 May 2019 16:27:02 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v11 0/2] PWM support for HiFive Unleashed
References: <1553508779-9685-1-git-send-email-yash.shah@sifive.com>
 <mvmbm1zueya.fsf@suse.de> <mvmpnqcsn6u.fsf@suse.de>
 <CAJ2_jOFu-yCZV_A4B48_fLq7h7UA6LUWhgpxr0uuh7vhW9Q8pA@mail.gmail.com>
 <mvmlfzisiwc.fsf@suse.de>
 <CAJ2_jOG2M03aLBgUOgGjWH9CUxq2aTG97eSX70=UaSbGCMMF_g@mail.gmail.com>
X-Yow: TONY RANDALL!  Is YOUR life a PATIO of FUN??
Date: Tue, 07 May 2019 18:27:01 +0200
In-Reply-To: <CAJ2_jOG2M03aLBgUOgGjWH9CUxq2aTG97eSX70=UaSbGCMMF_g@mail.gmail.com>
 (Yash Shah's message of "Tue, 7 May 2019 16:31:58 +0530")
Message-ID: <mvm7eb2qlgq.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_092704_237292_23C5069D 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 07 2019, Yash Shah <yash.shah@sifive.com> wrote:

> Leds on HiFive Unleashed are wired to supply instead of ground.
> And as per ./Documentation/devicetree/bindings/leds/leds-pwm.txt, you
> need to provide additional property "active-low" in such case.
>
> - active-low : (optional) For PWMs where the LED is wired to supply
> rather than ground.

This fixes the issue.

Thanks, Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
