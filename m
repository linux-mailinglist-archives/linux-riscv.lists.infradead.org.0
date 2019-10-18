Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2D8DBBF6
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 06:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kCNv61+nowWAePcKMaIPwZTNhge3+VVjgaXms2OGVQ=; b=sFgRyD39al9D46
	3s0h2vCMN4jPyyQ2qkA17mUFDvGkXDRYPhp3PLCMnqlQ8KXw+egOmtb+hqmVMXd2AYqEsxL7G2fs0
	BvNd0IWqhbp9j4e/h7GLyWH9G0W9eEIil9dMU4l9lSyqd9oyO6YxKfaTZfLR+M0Whyqq1e/LcLWz5
	78kFbseuyFoVApUKDH+WKmqv1I2vGPL3/gxrNplDgbwb0tVygK9Uii2S4D3dcfrda97SXD3RoWStb
	H2Z7tOLXLgTj/fPYgFWdLIO95exthHPjN95pkkn3pC3fUork3ocpMONBS9AmYpn1I++Z4um7ZQbpp
	y5WADP9uELyB29up/McA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLK34-0003xw-Hl; Fri, 18 Oct 2019 04:39:34 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLK31-0003xI-5w
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 04:39:32 +0000
Received: by mail-io1-xd42.google.com with SMTP id n26so5846804ioj.8
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 21:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=kdaIg1bmKvTuY1siBcuKtqxXXbNP+bO8qDJ8qtoHLrs=;
 b=alw6W5GQyFhcnDqfvGuR8ILsbtiVCq3gFNSbsc/XVCP/pbXcnDdCPf5Y8lhD+ZGjD3
 k70D30BaJyuuRDhkvJ+MYnPNjUNkDzOJObYzjLN9WjpGG6uwhVPce/MNyj2Gb3jpNE3N
 x12yIHzuETRu1nJA+I1boHpOvXikuy3MWOAVWs1ir7esAwfr2HFoVhDI34y1EhvUzbT9
 P313Uiqsbz9BN595bX4qtsM+rAYBUE7+jnI3adKsIbO3f+d+7d/aVjrY+PTr58X5PRO1
 dp2o6liHqfUAeu2MWjv+rB5i8j6bNLoTljIC3yYORBqQE44NGIUf6xD6JGxF0pKfbJjr
 li1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=kdaIg1bmKvTuY1siBcuKtqxXXbNP+bO8qDJ8qtoHLrs=;
 b=tapIYrG6Oc8q7c9IHol6u6SJtVoXLrSpFShLFWEdCYMfNHQvsV/inhMP5I6CLFrHEU
 1cASDipFY15rGBv7IwSZ/h3MmbDIHf/Nd9PetGUOGOJiWn7rnVvuXRcgo+qeEg8JkRSe
 ciuG1mguy7LiwxwM5Os9kQJZ77MlHIAN0eOTA510FVs14pQIfSSbATQfbLeFneLOPI1b
 HtzEEROd/Esa3ZGHcZTo1mLUDrzoOGlvU2irOwrIVZYZuDtNhA4m3d0NwLoeBJK7pfrg
 QxIczYkpNtPAZeManUlKJlADdpkJ/zUMsJOrTMRXkEZRC5iRE5S/dkaFo6VQ3k0vm/kJ
 6WDw==
X-Gm-Message-State: APjAAAXhw9cZ09WHl+IxLWSitHCbuAumpTg5+oDgR1EYJO4aWaVVjxy4
 i6fWxP7tUvn+RXjCENgZpw3qK7vWWjc=
X-Google-Smtp-Source: APXvYqz+VSmPYFEehv0u4XSaZ4gGq/6ly+snn34TQolYszWZAPowUNkcflBsfouOqC+vsTbwwiqpnQ==
X-Received: by 2002:a5e:dd41:: with SMTP id u1mr6869403iop.112.1571373570538; 
 Thu, 17 Oct 2019 21:39:30 -0700 (PDT)
Received: from localhost (67-0-11-246.albq.qwest.net. [67.0.11.246])
 by smtp.gmail.com with ESMTPSA id 26sm1545703iog.10.2019.10.17.21.39.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 21:39:30 -0700 (PDT)
Date: Thu, 17 Oct 2019 21:39:29 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Subject: Re: [PATCH 4/8] riscv: ensure RISC-V C model definitions are passed
 to static analyzers
In-Reply-To: <20191018040619.o3qb5fyj4qdevwoe@ltop.local>
Message-ID: <alpine.DEB.2.21.9999.1910172138320.3026@viisi.sifive.com>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
 <20191018004929.3445-5-paul.walmsley@sifive.com>
 <20191018040619.o3qb5fyj4qdevwoe@ltop.local>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_213931_221455_E396BBF1 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019, Luc Van Oostenryck wrote:

> On Thu, Oct 17, 2019 at 05:49:25PM -0700, Paul Walmsley wrote:
> > Static analysis tools such as sparse don't set the RISC-V C model
> > preprocessor directives such as "__riscv_cmodel_medany", set by the C
> > compilers.  This causes the static analyzers to evaluate different
> > preprocessor paths than C compilers would.  Fix this by defining the
> > appropriate C model macros in the static analyzer command lines.
> > 
> > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> > ---
> >  arch/riscv/Makefile | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > index f5e914210245..0247a90bd4d8 100644
> > --- a/arch/riscv/Makefile
> > +++ b/arch/riscv/Makefile
> > @@ -47,9 +47,11 @@ KBUILD_CFLAGS += -DCONFIG_PAGE_OFFSET=$(CONFIG_PAGE_OFFSET)
> >  
> >  ifeq ($(CONFIG_CMODEL_MEDLOW),y)
> >  	KBUILD_CFLAGS += -mcmodel=medlow
> > +	CHECKFLAGS += -D__riscv_cmodel_medlow
> >  endif
> >  ifeq ($(CONFIG_CMODEL_MEDANY),y)
> >  	KBUILD_CFLAGS += -mcmodel=medany
> > +	CHECKFLAGS += -D__riscv_cmodel_medany
> 
> I can teach sparse about this in the following days.

That would be great.  Would you be willing to follow up with me via E-mail 
or mailing list post when it's fixed?  If so, then in the meantime, I'll 
just drop this patch.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
