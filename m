Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB0CE9CB
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 20:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNNUUgiOGIABf7jYRIiWNkECei+IjDTG41+/mhiLplY=; b=Phn3g1GRRrYrF/
	ZzLbuCFeR/Wt+9Mus2FMionBkJ7cQbthwTrvR6huPQB1om/g6Ckud5XaEsjeYhJJf07GDSnk3hZSv
	a33ltoI8dmJ9F9JtOicSEsX+BJ0I8jIkwA5f/8mBTUohKxhHAsvccX+Kd+8qHAezpGFoIwyVlXQZ8
	gFGy0A5uPl3B2+/8Qv+dK3KXT9dgvtFR/u6AXX9PcihoDF21y5PR83OSAXrcDR0peXsmoGsZGTesj
	NtaayKLGsPd3hZ69lo2PnnNv3y0/rCwJ2uJXfc5aK8n5LQ788473VXZ1s8JbYqrhOI1yhdIHqySXU
	djzJRKShnzPk05X06uyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAmh-0002NB-0q; Mon, 29 Apr 2019 18:13:47 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAmd-0002MK-1i
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 18:13:44 +0000
Received: by mail-it1-x143.google.com with SMTP id q19so499374itk.3
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 11:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=2QB4RJLb+6FEgLy4+w2DfbmeovqCpuAG21kyMkfP7XA=;
 b=hYcWBuwZg/dYju1jvYpCEc4yGVpKLo1p/FuOY+cVj7+/Jpy0Mw80hE6psm76KVf1i8
 KpY9I0ahMAcReeV47+0bPMixh6yQufRO1oQxGQhrHNh+I5hVIm4HgefeyLcBEY0YZgvP
 6MJfEAAII4GbchxZO26JIPCDmjhXoZhVrk7P8sslat8s+/XGBgvkTts89RxtQLZ7SOXW
 GMgg/3L9Zui9809LZAVhciqSjpqx6kR70O2XurbBlYHPM0LV6TOjDPFk9+HkyTOKrSe7
 c7AmKwacwdZSG93o7MNnmcUwdAxTf7BpA8HeiroNIqIk+H9PUWgntk2lQSor4Y57Y50l
 bixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=2QB4RJLb+6FEgLy4+w2DfbmeovqCpuAG21kyMkfP7XA=;
 b=ATbD5Anl0Nzzhf/9si91ipOPUER5NvQ3v6zobvMtFAHM5uIxzKQFKW2ZRpwC8/jhhx
 zDdV8uJXi3rmDv5b77QZA8OcirBxRsDSwUL7Qw0hcdYVchRQ9gCtuEFg+trPp1FyaVla
 F9kbX+7BRrdfjnv/VkoWTbPRvMva6pF7I1QO/oH3TYNvOLy1FaR+yM2IlwykHBA3KZp/
 qQWCON1STdbhFZC6uJ+7ZmACAyTrQVfAEd/6fRGdZgqNGoWYuoutDe17pCzw1Md3IV5A
 oztl3O/2Td0XJ46VWcYTxgjxqz4i93fubflAPIMMaMvkGvtjL49XSKtZljx1aohnckb8
 16eg==
X-Gm-Message-State: APjAAAXXUNqNiR2KPJpFzHeA9bjD9aqpDzJyseinh0Y0zKuZVPBSjY0l
 pRuLKXMlP5j7ki/1ZOgbJQV5Xg==
X-Google-Smtp-Source: APXvYqx4XUXqAY+TWlfS929HupQJSdXoLFiGxqPYvRrbV+KHeRkcNZnCuY/p2CVCrXYNGOGlQp8gEw==
X-Received: by 2002:a24:5309:: with SMTP id n9mr329796itb.11.1556561621668;
 Mon, 29 Apr 2019 11:13:41 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 k203sm175872itb.0.2019.04.29.11.13.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 11:13:40 -0700 (PDT)
Date: Mon, 29 Apr 2019 11:13:40 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/6] dt-bindings: riscv: sifive: add YAML documentation
 for the SiFive FU540
In-Reply-To: <20190429180846.GA26021@bogus>
Message-ID: <alpine.DEB.2.21.9999.1904291113140.10713@viisi.sifive.com>
References: <20190411084304.5072-2-paul.walmsley@sifive.com>
 <20190411084304.5072-3-paul.walmsley@sifive.com>
 <20190429180846.GA26021@bogus>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_111343_120819_9E449C69 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Paul Walmsley <paul@pwsan.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 29 Apr 2019, Rob Herring wrote:

> On Thu, Apr 11, 2019 at 01:43:00AM -0700, Paul Walmsley wrote:
> > Add YAML DT binding documentation for the SiFive FU540 SoC.  This
> > SoC is documented at:
> > 
> >     https://static.dev.sifive.com/FU540-C000-v1.0.pdf
> > 
> > Passes dt-doc-validate, as of yaml-bindings commit 4c79d42e9216.

...

> > ---
> >  .../devicetree/bindings/riscv/sifive.yaml     | 26 +++++++++++++++++++
> >  MAINTAINERS                                   |  9 +++++++
> >  2 files changed, 35 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/riscv/sifive.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/riscv/sifive.yaml b/Documentation/devicetree/bindings/riscv/sifive.yaml
> > new file mode 100644
> > index 000000000000..d2808d8d79bb
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/riscv/sifive.yaml
> > @@ -0,0 +1,26 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/riscv/sifive/sifive.yaml#
> 
> The path here should match the file path. IOW, drop 'sifive/'.

Thanks, will do.

- Paul


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
