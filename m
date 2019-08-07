Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBB783EC3
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 03:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbBn90XOXI8XyzUd+Vx38wY7U6U2cpp5eY5t5q7a71c=; b=j5tlCDAKJJPgPF
	Kh4ooWyIUEI0k9GMZ2/tSkH5+AirGkMjWH6T0t5SxiX0oIDZJHphHsEIIDfDKon5duJ/drkhLvdJn
	XefR97+ZRpexObQutqnBFd1Qosd7y2TrF/SvlUm1xCUQodNCPTZLsGrrwhtmnVzxPkmSwzg0UnaGu
	naeupb9f4hojS70vNOaj14MxGjULGLLLv96cJNm5T4GKtsBWwCa286NnhUbPPN6s+sMsY9ursFu/K
	yaFRBWUWlh/DCmWRRid3IxcsZlHqpqnYV9pbW1SmtvPZ/K65wJQ0lDrbkchPJX5Z4TvwzebbDkDa2
	0FxwU+s842UWXV5xRddQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAiU-0007em-30; Wed, 07 Aug 2019 01:26:14 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAiQ-0007eI-Oa
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 01:26:12 +0000
Received: by mail-ot1-x342.google.com with SMTP id s20so32320517otp.4
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 18:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=owDgp928SO7GH+S1pO+PzwOPO8cCYUIRKUw/BGVnu6s=;
 b=ZkxMQGgCsorzr8S1tgzNj9F6fgdzY2E/QxK15CRf06TG3YxfMwhyqegE30ZnSaqX/x
 qO4j7mdbjy7rxvghk9Jm7gAqyhGrx5Utox/Xcur3nNXlJgHjv9rDRzWpAndzNPcf49Nh
 T9hhUF9OrQu+G7A9jcKkXZGDlgYfJkGYep3RIiu1d+VjwhKGCaBPomRyq2wGVjWuJkJF
 gS1FpqKj8NpRqAaBnV9L1kH05/r3B1JPUJ9ubXMSEPFaaVAa7/aC9oh6wVatJ2H76kqF
 hunXnG9O4PCUKokkQf/sho24dSc8lTLPJa4P+BH3vb35HYddQRrQypqHYeq1uBxax7+y
 BBbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=owDgp928SO7GH+S1pO+PzwOPO8cCYUIRKUw/BGVnu6s=;
 b=lBi3GPuWcv2nJP0J7MqGOagj2ncBJEiYASGCGXClpdDP7rLpGKpjD6stbeElYNV0Km
 fa9+Ss8NbP4F3jFf78NFh7ipKKTDBBx2N0cch53sL1l8VBiltSdR1oSLNvTBEo1PsDbU
 sMPOxW24hxQgMWvcjq/9J7Kz3vrsHA91/DN7luFBJ0YAbnegHDbqpN/MJF7lAMqknHl4
 SuROh6JTBPsGWQ/o3yDBZ2FzQJeqS1QyBaEPigXY8VzuQWv8VCt7SCFjZYA+2C8Si1Op
 LeGJcZUG+9lOrCS9Sb37uANi5B/wAT8v3YY9aOXij8U8JFe1xg7YVtyODtqBdPX3Ud4g
 70Sg==
X-Gm-Message-State: APjAAAW2F1hbLzzqrygvISQytUAkn3S0/6u7wO44BhVyhSMvbkKQ7y0R
 OF24MGUgpp6vMJts/sakvmnTRg==
X-Google-Smtp-Source: APXvYqwKdXrU1QqOa0yUvILl6xbOtT4vxTEkIzkVaZdnctYu+HuNnikE4y89DOgFp6zNih0Q+qcyEg==
X-Received: by 2002:a5e:c70c:: with SMTP id f12mr6990541iop.293.1565141170206; 
 Tue, 06 Aug 2019 18:26:10 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 j1sm78000195iop.14.2019.08.06.18.26.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:26:09 -0700 (PDT)
Date: Tue, 6 Aug 2019 18:26:08 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH v3 3/5] RISC-V: Fix unsupported isa string info.
In-Reply-To: <1e23ef1face9d323fda4b756811f922caa5f7689.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908061818360.13971@viisi.sifive.com>
References: <20190801005843.10343-1-atish.patra@wdc.com>
 <20190801005843.10343-4-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1908061625190.13971@viisi.sifive.com>
 <1e23ef1face9d323fda4b756811f922caa5f7689.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_182610_833213_7DCC2950 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>, Anup Patel <Anup.Patel@wdc.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "info@metux.net" <info@metux.net>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019, Atish Patra wrote:

> On Tue, 2019-08-06 at 16:27 -0700, Paul Walmsley wrote:
> 
> > Seems like the "su" should be dropped from mandatory_ext.  What do you 
> > think?
> > 
> 
> Yup. As DT binding only mention imafdc, mandatory extensions should
> contain only that and just consider "su" extensions are considered as
> implicit as we are running Linux. 

Discussing this with Andrew and Palmer, it looks like "su" is currently 
non-compliant.  Section 22.6 of the user-level specification states that 
the "s" character indicates that a longer standard supervisor extension 
name will follow.  So far I don't think any of these have been defined.

> Do you think QEMU DT should be updated to reflect that ?

Yes.

> > There's no Kconfig option by this name, and we're requiring
> > compressed 
> 
> Sorry. This was a typo. It should have been CONFIG_RISCV_ISA_C.
> 
> > instruction support as part of the RISC-V Linux baseline.  Could you 
> > share the rationale behind this?
> 
> I think I added this check at the config file. Looking at the Kconfig,
> RISCV_ISA_C is always enabled. So we can drop this.

OK great.  Do you want to resend an updated patch, or would you like me to 
fix it up here?

I'll also send a patch to drop CONFIG_RISCV_ISA_C.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
