Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51151A85FA
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 17:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZas7BtJBqJwvdT0uBiPgdzU0otpWOzw9cnFacG4UmA=; b=tyeZ8y9rELmufp
	Qe6+u5oho92VarsGHAFbvfYPh8FP6qwKBphRvjPv6kSn+BOw5oB7OaU5YLgGcJfu8gC2dqXCN0GsK
	4fPL6L65E0vC4Bh6Egt1rySJpqEFX5XTYdnOfefVG+H6Km95s+9QGJbmxw85oLe6oqrf37SkJti7z
	Uyujd7L84NpqBC1LzZseuwXp/LnWWGcS82HIMtQcoS0mpKd9j5Dx6v+rasptTIygVMQHg5NfpLAJC
	UHXS/HZu7M91GV+/m4sqyLh8ZbvXmFsc62DBQ+cxaw+QC8iTNX8k1JU3kqJ0TQN7Szquk3czoeL7n
	Bim0l/a8GizKfVdD+LvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5WvV-0000O7-SY; Wed, 04 Sep 2019 15:10:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Wv1-0007Nm-W4; Wed, 04 Sep 2019 15:10:01 +0000
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8408623401;
 Wed,  4 Sep 2019 15:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567609798;
 bh=NqqPlIXhQO92I7kvb7x3or16fY9V13TR0NCZAUTlJWQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AWidQoGUGTEdAWDkyAQISkCNmxGOCVo2yHgzKUIPb1rWWyUYYvUj0TuGpJtJIdGR/
 dzccXezv1sNoQ0yruF9u11a6H/6iwIB/gtyccWWtz8dKuZSwGte3k4tssFtb3jdPV4
 PjPhAy257Cd8DYrkZNOy9W2gZGHSBqmSukET7M/A=
Received: by mail-lf1-f41.google.com with SMTP id l11so16249000lfk.6;
 Wed, 04 Sep 2019 08:09:58 -0700 (PDT)
X-Gm-Message-State: APjAAAVYAQKWs6qLanFATs3IGF6frirfX3P5TgF/YTiCJOUKCQJbB55n
 fwvIykcjStFsnIQ0FRv9Jy9ukThk+hnKkrF8Fw4=
X-Google-Smtp-Source: APXvYqyPSaOFdTAZs9Jlj3fYyUPiQ+i5JR3LIfqaMYnX+qGBlZPtuYUs9/i9kuI0c87VBPXwtFxNFox7lL+fRxUp36w=
X-Received: by 2002:a05:6512:25b:: with SMTP id
 b27mr12719024lfo.60.1567609796654; 
 Wed, 04 Sep 2019 08:09:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-26-yuehaibing@huawei.com>
 <CAJKOXPdq4as1Oe3U+9znkvP0RA=sxUoiWVBCSbzf_wq_um2t=w@mail.gmail.com>
 <20190904143928.GB4348@sirena.co.uk>
In-Reply-To: <20190904143928.GB4348@sirena.co.uk>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 4 Sep 2019 17:09:45 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeRtbAvmR-=8Qa8ukGXt-cCj3ud_7y1Z4LgRpX3YCeumg@mail.gmail.com>
Message-ID: <CAJKOXPeRtbAvmR-=8Qa8ukGXt-cCj3ud_7y1Z4LgRpX3YCeumg@mail.gmail.com>
Subject: Re: [PATCH -next 25/36] spi: s3c24xx: use
 devm_platform_ioremap_resource() to simplify code
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_081000_075890_1B24BEC6 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: tmaimon77@gmail.com, palmer@sifive.com, tali.perry1@gmail.com,
 eric@anholt.net, ldewangan@nvidia.com, linux-riscv@lists.infradead.org,
 festevam@gmail.com, f.fainelli@gmail.com, benjaminfair@google.com,
 shc_work@mail.ru, khilman@baylibre.com, openbmc@lists.ozlabs.org,
 YueHaibing <yuehaibing@huawei.com>, michal.simek@xilinx.com,
 jonathanh@nvidia.com, yuenn@google.com, wens@csie.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 Andi Shyti <andi@etezian.org>, rjui@broadcom.com, s.hauer@pengutronix.de,
 mripard@kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 paul.walmsley@sifive.com, matthias.bgg@gmail.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 baohua@kernel.org, sbranden@broadcom.com, yamada.masahiro@socionext.com,
 avifishman70@gmail.com, venture@google.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, thierry.reding@gmail.com, wahrenst@gmx.net,
 kernel@pengutronix.de, kgene@kernel.org, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 4 Sep 2019 at 16:39, Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Sep 04, 2019 at 04:28:29PM +0200, Krzysztof Kozlowski wrote:
> > On Wed, 4 Sep 2019 at 16:00, YueHaibing <yuehaibing@huawei.com> wrote:
>
> > > Reported-by: Hulk Robot <hulkci@huawei.com>
>
> > This tag does not look real... First of all where is the report?
> > Second, it was reported by coccinelle.
> > Reported-by should be use to give real credits.
>
> I think it's reasonable, it's giving credit to the automated system
> they've got running coccinelle (which they do mention in their commit
> logs).  It doesn't really hurt anyone and lets people see their system
> is finding stuff.

Running internally coccinelle is already credited with commit author.
The credits are coming with "From:" field.
Otherwise for commits I send I could use:
  From: krzk
  ...
  Reported-by: www.krzk.eu
  Signed-off-by: krzk
To me it is ridiculous.

Different thing is that Reported-by is for fixing bugs or issues.
There is no bug here. There is no problem solved except making the
code smaller. That's not what is Reported-by for.

Best regards,
Krzysztof

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
