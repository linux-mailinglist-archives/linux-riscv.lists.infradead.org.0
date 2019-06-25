Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6B05283F
	for <lists+linux-riscv@lfdr.de>; Tue, 25 Jun 2019 11:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=nldZItLitOL3S8mJne6gylwim4Hqmi4xBYpU65MV20I=; b=WIy5RR1PoAFLfFv4k6veEVo38
	Pispjh9rx1zDKByJU8TGNK1HM1n1N9I2fpJ0y45NtFV013hmE9XzzZmbwa1N0q46s/PqwvHekWrUR
	YFPT06OzpSRqg3XCzHoHl4sD/6WZTx7pUZI1O/5f/tj7Q3nDpJyzRjcil2iUBrjG00DCPoyq6pP31
	zv5bhNmfk6Af4ukthWd24+breX/zs/jFQTWqWJ+Uq4LmwSgl83oGYq+FGszaid7g7wLdyU26JCXet
	P6jOKHsINneg+pngff1g3Dc24Z+/JHy02hZrfPrCMbtN73WLFI9qPP+aoOcOwqfNqD2uc1jzxBppa
	4K1ue8dUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhvM-0005Yq-0S; Tue, 25 Jun 2019 09:39:36 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhvI-0005Y4-5I
 for linux-riscv@lists.infradead.org; Tue, 25 Jun 2019 09:39:33 +0000
Received: by mail-pg1-f196.google.com with SMTP id k13so2507848pgq.9
 for <linux-riscv@lists.infradead.org>; Tue, 25 Jun 2019 02:39:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=hRi4ajiGUFKeMzAjuhkh1DNYz0dIJRV7lfjpx0rM/iM=;
 b=VtpvUdN+YIm+0Mg43Y37N0lgmH4DUu2e+njCac8A0vpXrDeW9b6OmLzjzvxiymBi/U
 wRXuPUACXMdPRmyv2E1NHY4dW9rX5QjxV9AAnggPqjvpbO7vy4IwJr0Wi0TCT29DzCrI
 yavDy5T2dmOqLnVPpzZTjFnzbs7nyMlg6N7gI6rXroOxQGaZhXqVHdlIlHNdNNRX99jy
 QQHridkftV/AzFIAAZDlOA7jpDf2F0507+OxMos7+1j8+xUQbo8+w8IMPKx3L39q6yRZ
 oVy/lQ9q0JDchK/WgoCBJ17C2+evv+LhsMZB0B61kY1+StszMFCMzrTYF0BD0tMVi4wH
 /QNw==
X-Gm-Message-State: APjAAAWCxjUICdgQ0R7gwUVin1eyCFybl4kGMOrkGDIg40oOF/Jf5nZN
 hALJub9fGvt2TZcWhBqZSl8i0Q==
X-Google-Smtp-Source: APXvYqybMotW0khjdQiV50T7VJy2vvzENYimZUiiJRHH4JCUBgizc2REGnBc7XVUCjvIwL26rpXvHg==
X-Received: by 2002:a17:90a:bb94:: with SMTP id
 v20mr31266695pjr.88.1561455570111; 
 Tue, 25 Jun 2019 02:39:30 -0700 (PDT)
Received: from localhost (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id p6sm13409409pgs.77.2019.06.25.02.39.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 02:39:29 -0700 (PDT)
Date: Tue, 25 Jun 2019 02:39:29 -0700 (PDT)
X-Google-Original-Date: Tue, 25 Jun 2019 02:38:09 PDT (-0700)
Subject: Re: [PATCH] riscv: Add cpu topology DT entry.
In-Reply-To: <20190624223819.14320-1-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-cbc0fa82-4c3e-4d7a-af9a-c730f7e3a3f1@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_023932_209561_68639E87 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 anup@brainfault.org, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, yash.shah@sifive.com, robh+dt@kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019 15:38:19 PDT (-0700), Atish Patra wrote:
> Currently, there is no CPU topology defined for RISC-V.
> The following series adds topology support in RISC-V.
>
> http://lists.infradead.org/pipermail/linux-riscv/2019-June/005072.html
>
> Add a DT node for unleashed that describes the CPU topology
> present in HiFive Unleashed.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index 83f40b00ab63..907564f4f07a 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -22,6 +22,24 @@
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  		timebase-frequency = <1000000>;
> +
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu1>;
> +				};
> +				core1 {
> +					cpu = <&cpu2>;
> +				};
> +				core2 {
> +					cpu = <&cpu3>;
> +				};
> +				core3 {
> +					cpu = <&cpu4>;
> +				};
> +			};
> +		};
> +
>  		cpu0: cpu@0 {
>  			compatible = "sifive,e51", "sifive,rocket0", "riscv";
>  			device_type = "cpu";

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
