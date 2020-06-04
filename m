Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 450C41EEC3A
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jun 2020 22:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=xx1SMceBerbJ4D9bRiE7FtxAAA2jXtiHh9vjFS/GUGo=; b=rYbH7k3gwKhLoV
	T4et6z9quRzI9nq/jWs+n5FBTi0yvNIKE7gydUiuh2ch8OqvPFTxsLAavjGZwF08iq4DUzAsWNUDO
	2yYC1PHcfiC+hsA3kyVOFpl11shT5iDe+fHSJvwvghphBA3b0k+iljZOyGEvsVxUxoZWRqstGFWZn
	oYJbbaeBov1MCsTyjUwncDZl0Cl4SwNcbdyyohlgWZDm8kdFVou1Jd8puKD/GCAq5vifuU0stP1kS
	JRbhnNUYKQ669y7MtDdKM1G35HRXxa93Kh0k2wb4wRFROeDhxRLAeGLaCMtA5duScLTFB2Ki1pSAB
	tWeGXYLjI6dXf2xFZjhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwfI-0002fi-I5; Thu, 04 Jun 2020 20:40:40 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwf3-0002Uk-HB
 for linux-riscv@lists.infradead.org; Thu, 04 Jun 2020 20:40:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id b201so3827573pfb.0
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jun 2020 13:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=xx1SMceBerbJ4D9bRiE7FtxAAA2jXtiHh9vjFS/GUGo=;
 b=Om00MRPnxHudI86qW6Iuw7en1e4tOjieEUvzDKvCJ6A4wtwo1q9bHu+SKpd17jbVHg
 s6b16xASEjJDBwRXkiDBeVMUAIEYfTycGII1FWri4gs9Asw2e1SM/lwwLyrDNzifqpef
 G+Df9AN2+/XtCA1WyfBtD9WRGwKj1bEsapAaCQjDc7QDthWz6yufc8gSlHF1I7+GlFhY
 eTnag4NLzgahcscyUqOavCXNQVqvO5Ht1vIczZBrSxb1jod3rQMBFdd1jGOs3rVChTqx
 bmyp47HhTQH80xJaS5IIGoLQSnph+dZFze9hr5HNHcmtr0W2mIwVn2Vjjo1vON2LFoyS
 THPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=xx1SMceBerbJ4D9bRiE7FtxAAA2jXtiHh9vjFS/GUGo=;
 b=qn33Dt6owo41YnUvScOxGJ6JDhzKXiDUh1nXkB9JoADIHywhggIAyiDQd1CilfFbzv
 rYKg6EEvDPyQVt0v7L2QNCganjxr8dM3RLkVzidFfz/5B5lmdn6b+S3xLNQUF/4/2POi
 QXiLFbLrN1XLhmG/85l869jaXXSTmq38N6I0y5pdk339IT+vIQEE7+KNkK/JTBRg5Mdm
 0lXiyuSmkMH3OQyeQCln9ANaqphBeQIPSp0OZhbHLZAiHxwTnUEQKgqGmR/2UwvWAn/s
 eEHtX2Xx4EGHRWA0kUWOarEfDua+KtJ0EcLmPLeemU+gG0yzqxKMiEn1iDlOKwy3v0cq
 vZnA==
X-Gm-Message-State: AOAM530ntrt0jzZjgjGCu/WlkSEOymYrXfMYcckVTEGwybilxffKPXMt
 vF1gJNuzlZWWv9DMbGj41p3DsA==
X-Google-Smtp-Source: ABdhPJwvAhsBDFc+fpSlPYAPYmaksv9k7s7TOAHwIxYlG02LqHwsGEBSVZ0kNPiEyGgJTpNEaju9WQ==
X-Received: by 2002:a62:3382:: with SMTP id z124mr6044820pfz.263.1591303224391; 
 Thu, 04 Jun 2020 13:40:24 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id v186sm4246627pfv.54.2020.06.04.13.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 13:40:23 -0700 (PDT)
Date: Thu, 04 Jun 2020 13:40:23 -0700 (PDT)
X-Google-Original-Date: Thu, 04 Jun 2020 13:38:28 PDT (-0700)
Subject: Re: [PATCH 5/5] dt-bindings: timer: Add CLINT bindings
In-Reply-To: <20200521134544.816918-6-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-12494396-db4d-4b92-a8fb-1bb59bdf7fb8@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_134025_632528_F7BE7A06 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <Damien.LeMoal@wdc.com>,
 aou@eecs.berkeley.edu, anup@brainfault.org, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Anup Patel <Anup.Patel@wdc.com>, robh+dt@kernel.org,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 06:45:44 PDT (-0700), Anup Patel wrote:
> We add DT bindings documentation for CLINT device.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  .../bindings/timer/sifive,clint.txt           | 33 +++++++++++++++++++
>  1 file changed, 33 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/timer/sifive,clint.txt
>
> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.txt b/Documentation/devicetree/bindings/timer/sifive,clint.txt
> new file mode 100644
> index 000000000000..cae2dad1223a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.txt
> @@ -0,0 +1,33 @@
> +SiFive Core Local Interruptor (CLINT)
> +-------------------------------------
> +
> +SiFive (and other RISC-V) SOCs include an implementation of the SiFive Core
> +Local Interruptor (CLINT) for M-mode timer and inter-processor interrupts.
> +
> +It directly connects to the timer and inter-processor interrupt lines of
> +various HARTs (or CPUs) so RISC-V per-HART (or per-CPU) local interrupt
> +controller is the parent interrupt controller for CLINT device.
> +
> +The clock frequency of CLINT is specified via "timebase-frequency" DT
> +property of "/cpus" DT node. The "timebase-frequency" DT property is
> +described in: Documentation/devicetree/bindings/riscv/cpus.yaml
> +
> +Required properties:
> +- compatible : "sifive,clint-1.0.0" and a string identifying the actual
> +  detailed implementation in case that specific bugs need to be worked around.
> +- reg : Should contain 1 register range (address and length).
> +- interrupts-extended : Specifies which HARTs (or CPUs) are connected to
> +  the CLINT.  Each node pointed to should be a riscv,cpu-intc node, which
> +  has a riscv node as parent.
> +
> +Example:
> +
> +	clint@2000000 {
> +		compatible = "sifive,clint-1.0.0", "sifive,fu540-c000-clint";
> +		interrupts-extended = <
> +			&cpu1-intc 3 &cpu1-intc 7
> +			&cpu2-intc 3 &cpu2-intc 7
> +			&cpu3-intc 3 &cpu3-intc 7
> +			&cpu4-intc 3 &cpu4-intc 7>;
> +		reg = <0x2000000 0x4000000>;
> +	};

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

