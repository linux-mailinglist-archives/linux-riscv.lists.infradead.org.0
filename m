Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8875611EFEF
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Dec 2019 03:13:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LlBgPd4jKU/ivB4inJv2NdvJiBH02P7hq9N0GagI2Hc=; b=cAR1Z8OuQ42T4v
	LuKhl0IuEfYsL+GGZFfCndk4jI+aI9tUqK1wRefIw5nSZbIVmuTvqcvYePkCOaPLt94w70c9ZrYlN
	mn/IsPaKPFdAc4yT2jiVVy5jtQUtz8twr0z0iIxJg76HwsFwBBMW7EpILCD3uTI54regnjOBfBP8O
	pitne5HGgyZiDxPD3L37snLz2hpFhXWOL1QEz1dXi1xzS5pwNUiav7gG6tQWOAqjN2ZsWvGW34jNo
	BzH8eQe9STMihPyd37NcP9/+i9Me7LQLvh9p6jDaNLIfhCMuP2M6XlkF2EMqRXCrYTNtTk2JuVVnh
	fGnr+JYVZCHPPytFYkRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifwvx-0006U9-6r; Sat, 14 Dec 2019 02:13:29 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifwvt-0006TJ-Qo
 for linux-riscv@lists.infradead.org; Sat, 14 Dec 2019 02:13:27 +0000
Received: by mail-pj1-x1044.google.com with SMTP id w5so473362pjh.11
 for <linux-riscv@lists.infradead.org>; Fri, 13 Dec 2019 18:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=LlBgPd4jKU/ivB4inJv2NdvJiBH02P7hq9N0GagI2Hc=;
 b=BrGWiWYwglLuch8nF6G6oTkqNFA41MXuP9p9xbZitOO4McQTuD58hZzHKG/a03AzkK
 X42N8H0YvBPayz8I6Uh0XriwvXTVsejiXkIozcO4JgDIOkGFu1bZem2KEuMyLKAsPLL0
 DzzY0oiQTF62+chWS2BeE/+P/XE/6/9LJNDzBKLLn9r7XmqtsIE2a/xwU9ZhTEVmlLtY
 uVygOLJb1lOyo3gUbP24BGF05pbUAps3FPiYHRv9AFl1ek/+rbe3zhTz+ggEsoL8pc9O
 Hz1TZIeeuZ5mPgTIqEG6ASO3x/BqGvjVtQnGFYp6crcvwEIkSVcW+fl1vaNiskAok30F
 f/9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=LlBgPd4jKU/ivB4inJv2NdvJiBH02P7hq9N0GagI2Hc=;
 b=lkmLB39ov7ebyfRWnyvTxk/FgdY4BaBA8BN3M33+nDSJrN1AGyzUysD8NwVQCh4M/Q
 fusBSj9onRTU5BAM17mAYtngetwBE1dXmmpfKLcm0ZoFpnbqjj8coGREwZtBEJx/LLB3
 5ERcGQSFIJzFCNNjEAfibyHqCGY/YCg5R6EFdNa13WI2uYYe8oe0SvK7hPWEHigPjK5r
 dEEU0IyN+B+RcP6Z9wsWcU0W4f66tRQiN5jETiov79dVjp/CyMrOWr11/ch2cn/xBbm5
 hpiMXwVUrdBF+1dNCdnciTB/TAkrkZOiCEtFeWWdZKvn3AhnSvKzVbk7wnPUGgUftFNY
 4KZg==
X-Gm-Message-State: APjAAAVM8pXaWkQcHlGeFmFchOQ++9trkAFL6j7OnDN3WgavI4orSbGo
 njyj+DWrnFnPfAj3hnUkfVl4Qg==
X-Google-Smtp-Source: APXvYqwgMNyHwqaM8GRlUVZchzrPIFh4IykzVZXcNvpGe5skS7V0neTV1XyOGJHuYGdSk9AcfCXhUg==
X-Received: by 2002:a17:902:b418:: with SMTP id
 x24mr2855620plr.85.1576289603789; 
 Fri, 13 Dec 2019 18:13:23 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id y62sm13929924pfg.45.2019.12.13.18.13.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 18:13:23 -0800 (PST)
Date: Fri, 13 Dec 2019 18:13:23 -0800 (PST)
X-Google-Original-Date: Fri, 13 Dec 2019 18:13:20 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 1/2] riscv: dts: Add DT support for SiFive L2 cache
 controller
To: yash.shah@sifive.com
In-Reply-To: <1575890706-36162-2-git-send-email-yash.shah@sifive.com>
References: <1575890706-36162-2-git-send-email-yash.shah@sifive.com>
 <1575890706-36162-1-git-send-email-yash.shah@sifive.com>
Message-ID: <mhng-119ed5ed-d9c3-422f-8d56-5794caef643c@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_181325_877993_AC0F544A 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 Atish Patra <Atish.Patra@wdc.com>, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, alexios.zavras@intel.com, yash.shah@sifive.com,
 robh+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 tglx@linutronix.de, bmeng.cn@gmail.com, linux-riscv@lists.infradead.org,
 allison@lohutok.net
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 09 Dec 2019 03:25:05 PST (-0800), yash.shah@sifive.com wrote:
> Add the L2 cache controller DT node in SiFive FU540 soc-specific DT file
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index afa43c7..812db02 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -19,6 +19,16 @@
>  	chosen {
>  	};
>
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		l2_lim: lim@0x8000000 {
> +			reg = <0x0 0x8000000 0x0 0x2000000>;
> +		};
> +	};
> +
>  	cpus {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> @@ -54,6 +64,7 @@
>  			reg = <1>;
>  			riscv,isa = "rv64imafdc";
>  			tlb-split;
> +			next-level-cache = <&l2cache>;
>  			cpu1_intc: interrupt-controller {
>  				#interrupt-cells = <1>;
>  				compatible = "riscv,cpu-intc";
> @@ -77,6 +88,7 @@
>  			reg = <2>;
>  			riscv,isa = "rv64imafdc";
>  			tlb-split;
> +			next-level-cache = <&l2cache>;
>  			cpu2_intc: interrupt-controller {
>  				#interrupt-cells = <1>;
>  				compatible = "riscv,cpu-intc";
> @@ -100,6 +112,7 @@
>  			reg = <3>;
>  			riscv,isa = "rv64imafdc";
>  			tlb-split;
> +			next-level-cache = <&l2cache>;
>  			cpu3_intc: interrupt-controller {
>  				#interrupt-cells = <1>;
>  				compatible = "riscv,cpu-intc";
> @@ -123,6 +136,7 @@
>  			reg = <4>;
>  			riscv,isa = "rv64imafdc";
>  			tlb-split;
> +			next-level-cache = <&l2cache>;
>  			cpu4_intc: interrupt-controller {
>  				#interrupt-cells = <1>;
>  				compatible = "riscv,cpu-intc";
> @@ -246,6 +260,18 @@
>  			#pwm-cells = <3>;
>  			status = "disabled";
>  		};
> +		l2cache: cache-controller@2010000 {
> +			compatible = "sifive,fu540-c000-ccache", "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-sets = <1024>;
> +			cache-size = <2097152>;
> +			cache-unified;
> +			interrupt-parent = <&plic0>;
> +			interrupts = <1 2 3>;
> +			reg = <0x0 0x2010000 0x0 0x1000>;
> +			memory-region = <&l2_lim>;
> +		};
>
>  	};
>  };

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

