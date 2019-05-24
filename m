Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6E329FFD
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 22:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLqH9ZkYKGOmSxGQl1+BOVcHnyFe0T8HRnjv4x/AmjQ=; b=uFQSZsoS7HW3PU
	Mj+pd/e4eH1ZbsaHmXZUPQ5P4g/F9R99NYjoPwRf609QcNw7FyLZlY5hpm5+0S+fSFyAJAVjuy1mp
	FhbY5BYcikYFJumn4yf5XGDjFqUzoOtdp83By5LR1OMJ97f0EY/ulEie6D9Nhy6aDU9K1MMZLYgUA
	DXuegCx83h0Rbl1Lb+rei7qHSrE+fsqv1/eDQqlsAhexHa8c1vYbWDD2avUTCeDYqMhu2TDNW0gJq
	+Z+kfKhMdo2EHjpiVkksAVobQ1e40/mndzwvTrQa4PeJY46Kr85wI3dIVhWxEbPTcagYQgW/suFJq
	zi/sOZyUhCTDrATY1UWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGzG-0003vu-T4; Fri, 24 May 2019 20:40:22 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGz8-0003lH-Rl
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 20:40:20 +0000
Received: by mail-oi1-f193.google.com with SMTP id u64so7999052oib.1
 for <linux-riscv@lists.infradead.org>; Fri, 24 May 2019 13:40:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dx7F2tb05aWTZPXIYGXtVkVDpMKUEB0sugnYrUDSEP4=;
 b=LfEEvyBgSvrNd5CTywqr++3Y8vuNHRh3g+FWiGFquhpZ7k/R7K+0ZkOruhwhAVm/84
 bHSv3QAfAznb8raEvCGl+t2QX8cmlJrhg/vDcbK/HrJz/tnQFmMcRw9xSHzJJBVVwk3C
 9oQ0A7ezHYRU//5V9kxBqUnMJcsLXa/ecnc8Z94ZMaXx3fczuixK334clyVVO8jxV5T3
 hRbnwmyFPXU9eSfGvlLXNL0V9P4eDW0IndZ3OenPXEHH5wORO7Zp5d3YgojrahVaWzCU
 KVKzhE+UF1QxfH6vQgkOSY6N5sb4j6lhzCswYTaL29Zjq/Z9tTIjiAPKPJ8N3nqy6b+L
 gmcw==
X-Gm-Message-State: APjAAAXPq84+gC48oEPaUSvfmop4lHhKuYJA998q13mRVQle+QWwmQoZ
 V0pvcaP++nevNt3ZvcVYmQ==
X-Google-Smtp-Source: APXvYqwl0+0Ie8Od8OqQ6UiwN8QOUNPXf4lB+czpxJ/RNSAqP54n83yRE/iuWBu2oUEGNFxf1Cnjsg==
X-Received: by 2002:aca:f183:: with SMTP id p125mr7644441oih.13.1558730413479; 
 Fri, 24 May 2019 13:40:13 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g102sm1186465otg.59.2019.05.24.13.40.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 13:40:12 -0700 (PDT)
Date: Fri, 24 May 2019 15:40:12 -0500
From: Rob Herring <robh@kernel.org>
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v7 1/3] dt-bindings: i2c: extend existing opencore
 bindings.
Message-ID: <20190524204012.GA2580@bogus>
References: <1558515574-11155-1-git-send-email-sagar.kadam@sifive.com>
 <1558515574-11155-2-git-send-email-sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558515574-11155-2-git-send-email-sagar.kadam@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_134015_053425_54B8524C 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, peter@korsgaard.com,
 devicetree@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 02:29:32PM +0530, Sagar Shrikant Kadam wrote:
> Reformatted compatibility strings to one valid combination on
> each line.
> Add FU540-C000 specific device tree bindings to already available
> i2-ocores file. This device is available on
> HiFive Unleashed Rev A00 board. Move interrupt under optional
> property list as this can be optional.
> 
> The FU540-C000 SoC from sifive, has an Opencore's I2C block
> reimplementation.
> 
> The DT compatibility string for this IP is present in HDL and available at.
> https://github.com/sifive/sifive-blocks/blob/master/src/main/scala/devices/i2c/I2C.scala#L73
> 
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> index 17bef9a..db96951 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> @@ -1,9 +1,13 @@
>  Device tree configuration for i2c-ocores
>  
>  Required properties:
> -- compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
> +- compatible      : "opencores,i2c-ocores",
> +                    "aeroflexgaisler,i2cmst",
> +                    "sifive,fu540-c000-i2c","sifive,i2c0".

space needed                                   ^

And drop the end of line commas and period.


> +                    For Opencore based I2C IP block reimplemented in
> +                    FU540-C000 SoC.Please refer sifive-blocks-ip-versioning.txt

And here too.

And 'refer to'

> +                    for additional details.
>  - reg             : bus address start and address range size of device
> -- interrupts      : interrupt number
>  - clocks          : handle to the controller clock; see the note below.
>                      Mutually exclusive with opencores,ip-clock-frequency
>  - opencores,ip-clock-frequency: frequency of the controller clock in Hz;
> @@ -12,6 +16,7 @@ Required properties:
>  - #size-cells     : should be <0>
>  
>  Optional properties:
> +- interrupts      : interrupt number.
>  - clock-frequency : frequency of bus clock in Hz; see the note below.
>                      Defaults to 100 KHz when the property is not specified
>  - reg-shift       : device register offsets are shifted by this value
> -- 
> 1.9.1
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
