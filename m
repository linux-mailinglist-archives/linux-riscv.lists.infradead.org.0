Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9D31DD7EB
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 22:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Hose8PlqDAqdvvWUSVa6xrNHWRQshi8g7D6paJwuuE=; b=k3ETGz1RDBT7zv
	fJEmKKZIaiWYuZt6cQ3XN+zfCoI/QM1DB3cV63eDI4et3vdLTNIG1xYq2yfySSD/cq2hrza477q09
	f+LIt2hDYKJRw7XP+BsIj9UgX87ObWjEoAAlLnGh/j9urGKqVO4bM11zENZNuFnjc5bvupxdYvyls
	+WPHq8pU8KYy5l7sEE4FhDWlSS9btC2CvBzh6sJwhcfIreWETZ6ic4O0X2AMg07ZZeUrp87fsZR/Z
	3nX1Pc6BsadIpib/9waQthWMGZBka6REzMlSqsj7PU79d+tvV1ACN/xynmEZnURvtt50dnXByf0Jg
	dvRPclt0YG+1uinOOOUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbrRP-0002kJ-24; Thu, 21 May 2020 20:05:19 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbrRK-0002jZ-Oj
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 20:05:17 +0000
Received: by mail-qv1-xf44.google.com with SMTP id g20so3660779qvb.9
 for <linux-riscv@lists.infradead.org>; Thu, 21 May 2020 13:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2Hose8PlqDAqdvvWUSVa6xrNHWRQshi8g7D6paJwuuE=;
 b=bVevxNEpteRG82qyDRmOLqo52u6P+Dto5vXshN5yOjP/GqFrqVCkYDJHpX6ttJ300w
 x5XjjqAH0QLQwhdC/PxXwKR17Mc1kpjgxx7YFrGkFNfS1PsunIj1JsBtUnxddA1cjdk2
 W/3pHMu3jmItlRHqyAZoNLGA1sugI/HDXRJ0opK2DOStVkgj0bmA6SOTtc1TAAmDFYm6
 qGLTqCVi9XQI200JNXUMzbFx2d5GnyC3tT2zwcJS9srDuLjXhOJflFwd0fyaew8bieB7
 MHN8Lz2lHXuwoACjoBigt1sH4iYMNnpl7PLt8hOVpS5ThP3CeZq/Dt9qji2Qeh2lYnfv
 F/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=2Hose8PlqDAqdvvWUSVa6xrNHWRQshi8g7D6paJwuuE=;
 b=LaY8iT+qGcDBHfdiJvL9B6/Wrjf0Rr2lRPij3zFNKCEOXI3AEvOkY/JaZz6Hnb9GWG
 c4T7iX+okqUHzc7KXLP2Q8lDmTFGLuHE1ESUeaqOo83x9VcWbH1PReZ/l4+2jG4LTf/0
 OVtyc7xG/jIouEVxwhI0pLchMevZZ10o/t/MpP6kpdRnMvyqLpFLkh5uGE5VXonfexfI
 PzFWzRhQVTT6fxJrY77Isa7KwubUkd1DcBVdZ2n2ETEr3vDwOTFHPsdiMlkEmT77fJjU
 TKZRjEAKZEnDxmmY+lcgyp9qom5AXEU5RySw8Kas9kQ7RUOz4+sWXAL250egIFDaAk0p
 KoyA==
X-Gm-Message-State: AOAM531oLGw2IhU1hKk9vzhvaSRqbZaGQGuenmDQp4c9J4D5Kah/jZsm
 7RuLmDFpdjiha2mwBYxWamw20ASLgUkOqA==
X-Google-Smtp-Source: ABdhPJyxO0XFCOa7M26EUUpKWSmSgkKuVWuk6vxtcopHVtXvuwKosXbIEXrFs8NcAYsa7uOSYd8q9A==
X-Received: by 2002:a0c:fe88:: with SMTP id d8mr424154qvs.208.1590091512897;
 Thu, 21 May 2020 13:05:12 -0700 (PDT)
Received: from [192.168.1.209] (pool-108-51-35-162.washdc.fios.verizon.net.
 [108.51.35.162])
 by smtp.googlemail.com with ESMTPSA id m59sm5849656qtd.46.2020.05.21.13.05.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 13:05:12 -0700 (PDT)
Subject: Re: [PATCH 5/5] dt-bindings: timer: Add CLINT bindings
To: Anup Patel <anup.patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh+dt@kernel.org>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>
References: <20200521134544.816918-1-anup.patel@wdc.com>
 <20200521134544.816918-6-anup.patel@wdc.com>
From: Sean Anderson <seanga2@gmail.com>
Autocrypt: addr=seanga2@gmail.com; prefer-encrypt=mutual; keydata=
 mQENBFe74PkBCACoLC5Zq2gwrDcCkr+EPGsT14bsxrW07GiYzQhLCgwnPdEpgU95pXltbFhw
 46GfyffABWxHKO2x+3L1S6ZxC5AiKbYXo7lpnTBYjamPWYouz+VJEVjUx9aaSEByBah5kX6a
 lKFZWNbXLAJh+dE1HFaMi3TQXXaInaREc+aO1F7fCa2zNE75ja+6ah8L4TPRFZ2HKQzve0/Y
 GXtoRw97qmnm3U36vKWT/m2AiLF619F4T1mHvlfjyd9hrVwjH5h/2rFyroXVXBZHGA9Aj8eN
 F2si35dWSZlIwXkNu9bXp0/pIu6FD0bI+BEkD5S7aH1G1iAcMFi5Qq2RNa041DfQSDDHABEB
 AAG0K1NlYW4gR2FsbGFnaGVyIEFuZGVyc29uIDxzZWFuZ2EyQGdtYWlsLmNvbT6JAVcEEwEK
 AEECGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4ACGQEWIQSQYR1bzo1I0gPoYCg+6I/stKEQ
 bgUCXT+S2AUJB2TlXwAKCRA+6I/stKEQbhNOB/9ooea0hU9Sgh7PBloU6CgaC5mlqPLB7NTp
 +JkB+nh3Fqhk+qLZwzEynnuDLl6ESpVHIc0Ym1lyF4gT3DsrlGT1h0Gzw7vUwd1+ZfN0CuIx
 Rn861U/dAUjvbtN5kMBqOI4/5ea+0r7MACcIVnKF/wMXBD8eypHsorT2sJTzwZ6DRCNP70C5
 N1ahpqqNmXe0uLdP0pu55JCqhrGw2SinkRMdWyhSxT56uNwIVHGhLTqH7Q4t1N6G1EH626qa
 SvIJsWlNpll6Y3AYLDw2/Spw/hqieS2PQ/Ky3rPZnvJt7/aSNYsKoFGX0yjkH67Uq8Lx0k1L
 w8jpXnbEPQN3A2ZJCbeMuQENBF0/k2UBCADhvSlHblNc/aRAWtCFDblCJJMN/8Sd7S9u4ZRS
 w1wIB4tTF7caxc8yfCHa+FjMFeVu34QPtMOvd/gfHz0mr+t0PiTAdDSbd6o7tj+g5ylm+FhT
 OTUtJQ6mx6L9GzMmIDEbLxJMB9RfJaL2mT5JkujKxEst6nlHGV/lEQ54xBl5ImrPvuR5Dbnr
 zWQYlafb1IC5ZFwSMpBeSfhS7/kGPtFY3NkpLrii/CF+ME0DYYWxlkDIycqF3fsUGGfb3HIq
 z2l95OB45+mCs9DrIDZXRT6mFjLcl35UzuEErNIskCl9NKlbvAMAl+gbDH275SnE44ocC4qu
 0tMe7Z5jpOy6J8nNABEBAAGJATwEGAEKACYWIQSQYR1bzo1I0gPoYCg+6I/stKEQbgUCXT+T
 ZQIbDAUJAeEzgAAKCRA+6I/stKEQbjAGB/4mYRqZTTEFmcS+f+8zsmjt2CfWvm38kR+sJFWB
 vz82pFiUWbUM5xvcuOQhz698WQnIazbDGSYaOipyVNS52YiuYJDqMszzgw++DrcSuu0oRYWN
 EWCkJjxMqjGg8uY0OZ6FJG+gYRN5wMFErGfV1OqQ7l00FYA9OzpOEuW9PzPZEutFnAbbh77i
 zvxbQtT7IJCL24A4KutNYKmWg98im4mCzQcJCxE86Bv69ErLVPUyYbp4doLadScilXlvkkjL
 iq1wOt3rRzOuw+qnWVgWGBPxdDftz0Wck941tYF9XE0aMgkf4o1sGoDZFUFPCQdfEYPzzV7O
 S5hN3/mP5UeooFHb
Message-ID: <2aec08b7-7197-4b60-89d9-c3b0d5a8a258@gmail.com>
Date: Thu, 21 May 2020 16:05:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200521134544.816918-6-anup.patel@wdc.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_130514_809595_613CA249 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/21/20 9:45 AM, Anup Patel wrote:
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

Should the "riscv,clint0" compatible string be documented here? This
peripheral is not really specific to sifive, as it is present in most
rocket-chip cores.

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
> 

--Sean

