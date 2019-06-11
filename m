Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3D841864
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Jun 2019 00:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8+YhQfpdFrukjjK2Xhlc6jyXESAT1j0TeNHcwqRlqA=; b=Ht+2hLxyPCTIPQ
	NiD7sxwLJc5WmoO5V/d9ON75167OFZCXcNFDTSudVU+QLivW19vha5rlL6GrqFUqzSqxNgf98GI/3
	vvdrBbcfR8wH3uT/Luwgye1bD/liRypDwaYx1vOuoPFf02nh0pMl0MNKBA2n/1MWcTmuUFYRtCHWZ
	VxlRkje/+USgGldOfgdMgOxUl/hAKk/SdiKvYgvFMlhqwjWK+wIvfalcu7zzwewhG7FPvLVMYWuiU
	+tSGaVXCXLzjGrbBp9SGDs0iv8FB0BfYJSRuB1WaPLl9hCRD+RS9eHOJSish3/9y0eekaRP1f3XKM
	f/z2AqzOalLXl4TlMJ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hapae-0000Fl-LG; Tue, 11 Jun 2019 22:50:04 +0000
Received: from mail-it1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hapaX-0000AM-Aa
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 22:50:00 +0000
Received: by mail-it1-f195.google.com with SMTP id i21so7721460ita.5
 for <linux-riscv@lists.infradead.org>; Tue, 11 Jun 2019 15:49:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/NnSGwbKcnY/7Q2s2Gevcsyo7XJDO9FOrJ4WUpJ1HFQ=;
 b=OeBOmNLRe1U+kqUP9BmyoXMQAJKNGhwVn9QbYqmXNZ+0LkivvUXkTcis/yrRormp0n
 YvI5NoxupdVX6WHPgGxDl8oJ8To1fBnwMJWN/pcrZU7ixqZ2swjNDsCK87z9DUTMnbKi
 m70RBGJM41SPlDDfBAOVKe69j5LXndLA3hgVy0oVz4tHEWLSNMTamqZL8V+rx9hjTVIv
 rUOFIdEdr9LIi7wTPNtxzztp6Q6LONvhqxkLwWwcQpFugKBqOm4LpwknUi4wobRXRPpR
 f7d4GzgfGmKLcUgRgd+ZBQw2K7aPfmfrdnaq1oj8K/uKcze8mLMhh3ZD2l+aU64KWt8t
 BZzQ==
X-Gm-Message-State: APjAAAWj/B0kFSEJFK7fIwIc9o0a0S+J1dh7qC9AF1PR97bJTZ08iQFY
 iBF4nzgTxHFGeJTIHukSkA==
X-Google-Smtp-Source: APXvYqwdY0VqgKIy7eeWPn3ZJv3AdjkyxMqbBpgjo8QSwtv2zrOmnzCLT/FHfPAZdx/fsmc5KbbIEQ==
X-Received: by 2002:a02:c6a9:: with SMTP id o9mr17897923jan.90.1560293396229; 
 Tue, 11 Jun 2019 15:49:56 -0700 (PDT)
Received: from localhost (ip-174-149-252-64.englco.spcsdns.net.
 [174.149.252.64])
 by smtp.gmail.com with ESMTPSA id o145sm572109itc.24.2019.06.11.15.49.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 15:49:55 -0700 (PDT)
Date: Tue, 11 Jun 2019 16:49:52 -0600
From: Rob Herring <robh@kernel.org>
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH REPOST v8 1/3] dt-bindings: i2c: extend existing opencore
 bindings.
Message-ID: <20190611224952.GA17031@bogus>
References: <1559369475-15374-1-git-send-email-sagar.kadam@sifive.com>
 <1559369475-15374-2-git-send-email-sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559369475-15374-2-git-send-email-sagar.kadam@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_154957_379530_010285DA 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, peter@korsgaard.com,
 devicetree@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, sagar.kadam@sifive.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat,  1 Jun 2019 11:41:13 +0530, Sagar Shrikant Kadam wrote:
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

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
