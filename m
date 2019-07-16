Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050706AAEA
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jul 2019 16:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5N2YGh8ChA+1wvR9vwdKFu/16ZLJHAQQdUqZub3EUU=; b=Kkmyk3BuxUtAaO
	bqLWJ/0SDq9IzdCv/CUTkkBw6p0uJiUg4S63cNOPOx85vAdZ5H/f+abjuYQHQpGKPB4qltrqavsjg
	+Z693IKprC3OSQJoa0w7/xqsRqv6hEq+LhnFMUoCu5fTpnegbvkY1NXlc6E/FGILE6eLZ0/oKyOyR
	70f6+9g7KMgVQyvG0aCTW/fen+RPzd55cWEHSvwPiI4mEn0it2w4fsrNJMVXiSJ1+zQfm0kPUL4ov
	Tmi1JIC7lWYIIJa0/DkHNnt3DtY/ebjo/3Ax5HVAuNe02hRklFqM+ZVIUGGJq499jGdXB+n5TMGmY
	KYnU145rgz+BAuvUHscQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOnq-0001On-5c; Tue, 16 Jul 2019 14:51:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOnV-0000r5-Ss; Tue, 16 Jul 2019 14:51:19 +0000
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E474217D9;
 Tue, 16 Jul 2019 14:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563288677;
 bh=sonO2Wj/dB2WVkbnigGOIptZBiYzU9g2oAVvNNhm8N0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cJpVGUzwvpQrBfw5VxnjM7fZDMqN8buukyY5uNJV0ilBSNzK8xmxbSP8KeFgOPVGk
 CdhPYLcquPdpNPv9IfGMnbk93gK1YgS3rEW3NEieCmVZ/yyatbJnN9K/XZrO4tC0sv
 vpJ81lt0Z15VjbKndmSpPGS7eGfx6pNckGHuM6H8=
Received: by mail-oi1-f177.google.com with SMTP id v186so15770621oie.5;
 Tue, 16 Jul 2019 07:51:17 -0700 (PDT)
X-Gm-Message-State: APjAAAUJl55r17JvxzhZvYmAxeDrKfXajStTg9HH1bmY8UC+hEOs4Cr+
 nlo/4frMW7LVg3pHwN9GWPkiLuS/kzn4JTZ/d5o=
X-Google-Smtp-Source: APXvYqznotTEvyaymhJh/wAMu0w2H5gcuDv5j22SZvycyNMyxsk7XBmOnJ7QXnjodYkrV1FF1kduEHzUtbpafqpVCNU=
X-Received: by 2002:aca:1b0c:: with SMTP id b12mr2605814oib.123.1563288676578; 
 Tue, 16 Jul 2019 07:51:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
 <20190712022018.27989-2-alex.shi@linux.alibaba.com>
In-Reply-To: <20190712022018.27989-2-alex.shi@linux.alibaba.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 16 Jul 2019 16:51:05 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcnMM=h9-MW4qg4OTxaY5eBQ=4tH=Gbd3tSuckFvSOPcw@mail.gmail.com>
Message-ID: <CAJKOXPcnMM=h9-MW4qg4OTxaY5eBQ=4tH=Gbd3tSuckFvSOPcw@mail.gmail.com>
Subject: Re: [PATCH 02/12] Documentation/arm: repointer docs to
 Documentation/arch/arm
To: Alex Shi <alex.shi@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_075117_953341_D5701120 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-s390@vger.kernel.org, linux-fbdev@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-ia64@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-parisc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-serial@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-crypto@vger.kernel.org, kvm@vger.kernel.org, linux-input@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-omap@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 12 Jul 2019 at 04:20, Alex Shi <alex.shi@linux.alibaba.com> wrote:
>
> Since we move 'arm/arm64' docs to Documentation/arch/{arm,arm64} dir,
> redirect the doc pointer to them.
>
> Signed-off-by: Alex Shi <alex.shi@linux.alibaba.com>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: linux-doc@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-samsung-soc@vger.kernel.org
> Cc: linux-crypto@vger.kernel.org
> Cc: linux-input@vger.kernel.org
> Cc: linux-serial@vger.kernel.org
> ---
>  Documentation/arch/arm/Samsung-S3C24XX/GPIO.txt    |  2 +-
>  .../arch/arm/Samsung-S3C24XX/Overview.txt          |  6 +++---
>  Documentation/arch/arm/Samsung/GPIO.txt            |  2 +-
>  Documentation/arch/arm/Samsung/Overview.txt        |  4 ++--
>  Documentation/devicetree/bindings/arm/xen.txt      |  2 +-
>  Documentation/devicetree/booting-without-of.txt    |  4 ++--
>  Documentation/translations/zh_CN/arm/Booting       |  4 ++--
>  .../translations/zh_CN/arm/kernel_user_helpers.txt |  4 ++--
>  MAINTAINERS                                        |  6 +++---

I assume it will go through doc tree, so for Samsung:
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
