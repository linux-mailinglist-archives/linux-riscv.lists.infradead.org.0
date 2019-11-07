Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE17F3AC4
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 22:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=P7JL75qtfMUOeGVnCbaThm3GP52Fv0Bh8QgONnN0sO4=; b=c1UcIeHTBWTqDDBesTyKs5ANA
	OLjkFrFodvEqrUIe18TwarxdF/OPQ3iKHE7OpGTfOy3Zfu8ukLI8pxDaCeEBu64fd9LuMO2nvuYjm
	mqkrSxXMJoUAuxcFCCKnImqrtOFQQz11S4bsqfcaUBmGExhvZTn1MJRJU6U/ix5ei+0lTC9uKoc0E
	t5BwWF6t2cKVsLLuvREpZMBFVq+NfcXDKyk4B0nn4THgON6v/+gb2PWed9BcyC1mqE0ZuehTRdkkW
	6+GIA24w+4B/k5l9vWvQnjhgsKfE/FOf1mTvEH/vgSL57i0evR7d8zXXSJosS8VXwafd4ZBcU+f5K
	scn7ofYkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSpiB-0001Ma-T6; Thu, 07 Nov 2019 21:53:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSpi8-0001LV-Rd
 for linux-riscv@lists.infradead.org; Thu, 07 Nov 2019 21:53:02 +0000
Received: by mail-pg1-x542.google.com with SMTP id f19so2795115pgk.11
 for <linux-riscv@lists.infradead.org>; Thu, 07 Nov 2019 13:53:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=1ZmP3Rg7HzABUgxKqQ/4jGQaai0OdMM5UHRs2UoA2Us=;
 b=l3vjWLydFjCtnlYdjNGzXOljrsJTHX7IERVD5wJFYO/t45yCELfuaDoGwYeNyVpB+n
 XJY0CrCVjHDn4tgOv41UjW04q89qVSuKyrmw3WyN+SUF2+WhB1Z2CVsZO9mXZ+3Gm0Fk
 XITUMqVoXa1++r+JUrAoyVzBswTQkxIKvy0zryDeeGCLem79epiacJJYmY4qHsYvj965
 eV0qb3WtRvntvfMLHk/3wf5DBA4WxPbPUWk18Iy2O0Fr7EYaoHFJuqkegWXJjPGLodU7
 CRMK5eKfjf8Vu2scccHhiMkieOf4DnxBcKR95/NlZ1ZoSPvrIT8aTsVKRuBoFZEizlmd
 +A5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=1ZmP3Rg7HzABUgxKqQ/4jGQaai0OdMM5UHRs2UoA2Us=;
 b=m0xZEHG+pPaoiiUnrQKpyGyjm8twFJQQeRyJMLTRDs0CDLdW4nV6QyrPqFWBnq+Lu1
 rjUFfUreMetq+kXQyECNUfqwvG3FEii/xrDlP/aqVK9srzTXgcquzss/hP5wzESCgys7
 FWMymVM+L2nj91tVtXwtnuwSA4p0GKWogWKRFPaiyUy7mGJmp1mkCFB8Hr7oUBNYpuPS
 aybQbN1t0mVz/roBu041U0WPxnR42Ads3/3c4xlZ/S7L+DskJIPdjdO1rTnN6jhywFRh
 32h2tS/53Wfe5NVPsFSvu7pPCZG1YpCcJhvJZn6yoWyQadfOZi/CIIKcIvNAVey+EcQV
 UViQ==
X-Gm-Message-State: APjAAAUbISev12ig8TtzDkM/u4Ed2egzM/Tjp6XbK6F8+vuiycRgW2Uy
 gkBKbHUAwpoBTYQO+F3fFuKzGw==
X-Google-Smtp-Source: APXvYqzzcZmDI/kaSp6LdK1qm0znVJ6nCHWBAR7hkCC2Zt7lvAHXwwzIgNfPrMwN/CstJOHouv4T7w==
X-Received: by 2002:a63:955a:: with SMTP id t26mr7618796pgn.280.1573163579261; 
 Thu, 07 Nov 2019 13:52:59 -0800 (PST)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id f13sm3338842pgs.83.2019.11.07.13.52.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 13:52:58 -0800 (PST)
Date: Thu, 07 Nov 2019 13:52:58 -0800 (PST)
X-Google-Original-Date: Thu, 07 Nov 2019 13:45:27 PST (-0800)
Subject: Re: [PATCH 1/2] dt-bindings: power: reset: document the QEMU RISC-V
 virt machine poweroff device
In-Reply-To: <20191107212408.11857-2-hch@lst.de>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-5b9f028d-0839-42e5-8d6f-7fb00ac9f39d@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_135300_899542_AE1FC2D2 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 sre@kernel.org, robh+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 07 Nov 2019 13:24:07 PST (-0800), Christoph Hellwig wrote:
> Add the binding for the trivial Qemu RISC-V poweroff mechanism, which is
> just a single MMIO register exposed through the DT.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  .../power/reset/qemu-riscv-virt-poweroff.txt     | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt
>
> diff --git a/Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt b/Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt
> new file mode 100644
> index 000000000000..80ff6fd4e3b7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt
> @@ -0,0 +1,16 @@
> +QEMU RISC-V virt machine poweroff device
> +
> +This is a device in Qemu that can signal successful or error exit
> +by writing two magic numbers to a trivial mmio register.
> +A Linux poweroff is implemented as successful exit.

There's a third value that reboots the system, but it's only implemented in 
qemu-4.2 (not released yet) and above.  It'll be 'compatible = "sifive,test1", 
"sifive,test0";' (or at least will be when I merge my patch to do so).

> +
> +Required Properties:
> +-compatible: "sifive,test0"
> +-reg: Specifies the physical address of the register
> +
> +Example:
> +
> +	test@100000 {
> +		compatible = "sifive,test0";
> +		reg = <0x100000 0x1000>;
> +	};

Reviewed-by: Palmer Dabbelt <palmer@dabbelt.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
