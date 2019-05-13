Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FAA1BBDB
	for <lists+linux-riscv@lfdr.de>; Mon, 13 May 2019 19:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6drohYeaOjLn+90WfY5r5DItRYN278aht/LqsoLMGhE=; b=br0UZ/ouSP6V9X
	q8QSdqlKCfKy0JUf/HDplH9hzaBWozgRiieeKp9JJZoxMGYjTtxrSopB2GinLamBdyuhn6sTTCNqw
	+sNvh4I7D/4I/I9kra2XgTeZ3cq7MsqEc4V1lR99vfJf+NZbjrkFNimJfy24f1+qhPzw3twVo9+JZ
	O+SwCjG1JuVByKB9pGzvF0OUq8wG7sCAC2V+8VMHSQPfh0OzPVTlBoqN4pyLHbFSaXaUKGgf2k21j
	ibZwkpZSUe5iEZpxsk0uF05H/Fetd+XHibPIf9YcOZCxjLi6iKFVdDb7cJh8M3YLRGAWQALQ/JGkm
	nOtsWB6KNSOjpVMTayGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEhi-0005Jn-0Z; Mon, 13 May 2019 17:25:34 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEhe-0005JD-Pa
 for linux-riscv@lists.infradead.org; Mon, 13 May 2019 17:25:31 +0000
Received: by mail-oi1-f194.google.com with SMTP id m204so9982592oib.0
 for <linux-riscv@lists.infradead.org>; Mon, 13 May 2019 10:25:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JwRFo3DhBvhvYNcEC/am2wCgLytVGaHJE4Tx7MDzOp4=;
 b=Qr6bobnPH/2dkdWY/cDEBZg8ajmFF4VVUaEn0IHUNkwT62kA1jEZTQPVEIEPJooeC9
 BpqWsCcPXkuUnhNMPwkkmX89F9HAAB9YuU9bXUCv7FQ/KtO4gMGq7t07zdSX9anjtapK
 TC1WE9o5m8hxCvMmbHdIA0ZgWT1ftXfolvTzGhZvRKdO0g+3dZxRT8f8dop1Ob7L8cO/
 vMCQfPlCZNIseLt1Y0VEa+YkT6y7KkOKReyzCEqwkp/UOu2XN79CM/5eYRDMNShSyeX8
 wWGmE4FGjHJPyf4k955Oob2UkWqoPF9tYADSHebrONUGLRrWm5zZOoTEK34DV8vahaWs
 oAgA==
X-Gm-Message-State: APjAAAVLgzw9fLFA3GN+hQTOHTp7MSF0KmCzOWP9srR1jToMcKI5VM+D
 kGUcGkmJDD4Ixp0z+DPxIQ==
X-Google-Smtp-Source: APXvYqxxLISshsUxt7n5yX3uJx6zHeqA0k1GVSW7x1WBiyHvDX5GZh3BlFLnxcOjpcl857OP85tr/A==
X-Received: by 2002:aca:4c83:: with SMTP id z125mr178279oia.60.1557768329660; 
 Mon, 13 May 2019 10:25:29 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y18sm5207278otq.36.2019.05.13.10.25.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 10:25:29 -0700 (PDT)
Date: Mon, 13 May 2019 12:25:28 -0500
From: Rob Herring <robh@kernel.org>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v3 1/2] RISC-V: Add DT documentation for SiFive L2 Cache
 Controller
Message-ID: <20190513172528.GA9362@bogus>
References: <1557139720-12384-1-git-send-email-yash.shah@sifive.com>
 <1557139720-12384-2-git-send-email-yash.shah@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557139720-12384-2-git-send-email-yash.shah@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_102530_833794_F2BDE546 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 palmer@sifive.com, linux-kernel@vger.kernel.org, afd@ti.com,
 sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon,  6 May 2019 16:18:39 +0530, Yash Shah wrote:
> Add device tree bindings for SiFive FU540 L2 cache controller driver
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  .../devicetree/bindings/riscv/sifive-l2-cache.txt  | 51 ++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
