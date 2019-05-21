Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED9524AFB
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 10:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqRVu2mbgeyYGo80fOj4+rhUqY+2tDqIMQbtcpamdzg=; b=Px8Jx7o2jEMbgx
	G+B+hNFi0a1JfDoTBvRU0d0tgrutnWPfDq1rtPYGbMaLR08z2mrFpuzgeVyXlMCYADTuGqs+op5sZ
	AQq9hdGpubC+IQRGZj8BbCQyyEeSbpIZrrNem2rpfirI8C3FS8OISTyTM/N0fXLNJDw+z+QrSOMhU
	7R2pTWIOMxKnqvcBnOQcn74OD1ksR7TdsKi5d0W9a15dQqPgxoWOgHPK1KmVLxjY5P2Ths03UtUty
	sjWBL2mvORj78vZhsvufDV6c/kQo1RmjL2YIHk6RBTBmXItai1zwMIbBx44jjEIaO7+2ZZ8qUs7Oc
	isPx+cCyo+xkJYeDhKFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0b4-00065Z-VZ; Tue, 21 May 2019 08:58:10 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0b1-00064n-Ha
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 08:58:08 +0000
Received: by mail-ua1-x944.google.com with SMTP id e9so6343751uar.9
 for <linux-riscv@lists.infradead.org>; Tue, 21 May 2019 01:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ASCK5QEsgPSM1g1u7FGizuNcDI5mfe6ouhE1b8rzrSY=;
 b=OGaKD9fkwz/Uh1otcyfhnq5/11wcGhDIMBsJWSCFGVzL84pS/hohwFfTIPr0f3C7Ss
 TCzV+PrZ/UE1xdmLWaFz6PlGI/iF3RtRcVfLUtdvGvPDcDjQ6ZWUuw7/hqHnzw4aVDq1
 T+TY5Hf5SwxBmY4jlUIN7MgSgWIeGv9WeCgHuKRb6Ws8uWAfz87GnLQtfCKnhwCm5Ijl
 7AT6oOuPUrKCta8mX1J86JEXXy7ICqIg+BDY8PRPDNIGX4oA5flVrgmU0Joi7mCEt2Wr
 R+xJmID9TmfovxsKCZZJ9RzeZZ/7PNIBdrrTxN3UIyhoLQvh5nHJEXpJfG6LmHecnXdD
 QFTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ASCK5QEsgPSM1g1u7FGizuNcDI5mfe6ouhE1b8rzrSY=;
 b=hYPPWf2xGJxmUC9aUKteJ6tJfajl3d+xYueINodDIBF6bOU6DXeCOHsTJClhcdYviM
 RU0MDD8DVIGcNgtlJFPnp/tTjMJ7xzvTjIEJeLJ5Jg/SFv7NqxPZ/pQ964G/RhXtfbvP
 x2aQ3WjibR87yZo7Mhn/XInxjCs3LdL6DkfcqBnFYYHV7z71P9doDcNlVJ83z7yqzJUM
 YLV2CC9gvReANfUcHdSGkL+W6lqGRQTGAN34fjjSlgZcOcdsjta7ZYRlxTEa+EBrsaBC
 m5IzdyHZVye74usqMRTUQFq9QRyLVExq8x6BZdO94Xg8mnob7SnNJr8NX8tEOoFqOzqY
 FnQQ==
X-Gm-Message-State: APjAAAWptc0cVDSF6BOZheXwxqcQvDP/PLRoQN/oJL/8Jk8m7sv22s/o
 bEYVEqvmXb4gL8LUWe/mRorBFa6Xq2mZWkffGKyUsA==
X-Google-Smtp-Source: APXvYqzkKcNaCd+xd63rL6haTKxCeW8/LcqpqGKBrmCWjM1IJegwyk74C67ww1GqqytfFzxidHgluiDjyzYYhL10aqk=
X-Received: by 2002:ab0:45e9:: with SMTP id u96mr17987279uau.75.1558429085797; 
 Tue, 21 May 2019 01:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <1558361478-4381-1-git-send-email-sagar.kadam@sifive.com>
 <1558361478-4381-4-git-send-email-sagar.kadam@sifive.com>
 <mvm7eakjjf7.fsf@suse.de>
In-Reply-To: <mvm7eakjjf7.fsf@suse.de>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Tue, 21 May 2019 14:27:54 +0530
Message-ID: <CAARK3Hn4-amRV-knDa5UR8J68DKxWaBnC3O98KvciNpbwbsAGA@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
To: Andreas Schwab <schwab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_015807_647665_27B5CE8F 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 peter@korsgaard.com, devicetree@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Linux I2C <linux-i2c@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Thanks Andreas,
Yes, I rebased to v5.2-rc1 and observed that there have been changes
in polling interface, and i2c->flags is not longer being used for
setting the polling mode. I am working on a way to hook in the fix for
broken IRQ and will submit it in v6.

Thanks & BR,
Sagar Kadam

On Tue, May 21, 2019 at 2:03 PM Andreas Schwab <schwab@suse.de> wrote:
>
> On Mai 20 2019, Sagar Shrikant Kadam <sagar.kadam@sifive.com> wrote:
>
> > The i2c-ocore driver already has a polling mode interface.But it needs
> > a workaround for FU540 Chipset on HiFive unleashed board (RevA00).
> > There is an erratum in FU540 chip that prevents interrupt driven i2c
> > transfers from working, and also the I2C controller's interrupt bit
> > cannot be cleared if set, due to this the existing i2c polling mode
> > interface added in mainline earlier doesn't work, and CPU stall's
> > infinitely, when-ever i2c transfer is initiated.
> >
> > Ref:previous polling mode support in mainline
> >
> >       commit 69c8c0c0efa8 ("i2c: ocores: add polling interface")
> >
> > The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
> > FU540-COOO SoC.
>
> After commit dd7dbf0eb090 this no longer fits.
>
> Andreas.
>
> --
> Andreas Schwab, SUSE Labs, schwab@suse.de
> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
> "And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
