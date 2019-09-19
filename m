Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036CEB79E1
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 14:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+7hEgrHLZBo2t7xghO3HRooWDc2tjXpXw1o0JOR2+k=; b=Zh4FG/bzKIahWI
	7JNJmf4sxbRe2B8mWLOUUSHSIDUoUi1kRPvxP2xNEPT7BN4d9I4C/oEd6aoIiWxrG3dhbVA5/yEiX
	T7P2WKqStkGyrrv4TMgMrWmv2PeHhJBmPACIecrc5gGR4qtgOZ7ZEALLz/FkX68jv0IgvChjxSoC8
	xPXk7q4CmC4Bf+yfBJMuCBjzBbFMzIU3JGpgmoQhet0XSTL9Jg//kpRfJ7ek/2QNn415eoRu27wdn
	DjiQ/M5L2K/T3BoL//gog3KtuOLPeSAQYFj2R6pF68Tet8nDvSu25bhYMbEcds/EjpSb6PmV9Czpf
	vcEC+Bw5HKRGQRuFdCvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvy7-0001dI-2Q; Thu, 19 Sep 2019 12:55:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvxy-0001cs-3r
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 12:55:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id l11so2991259wrx.5
 for <linux-riscv@lists.infradead.org>; Thu, 19 Sep 2019 05:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=65/ywDMWrzjeCzGWCGYnBZeM7JciK2cM+apP1oaSTMo=;
 b=aMXMVXNc+01+ALajqoxJSw001xwdNeYz8ol0SlDxQ23fL+trAlbYvQpAtgX5YMFRPk
 boQx8cdnW+Hxop65M+odc7EH+HqEkw6/hVRPSgasuYXJlzjSidX52xTTaBXqjVeIpOXH
 GC904JYvj30jGTfjm/qj+mgyoFJVo0MXRHWDe7VXTgz4rtIX/wWhTJjpVkb8sRohbjtF
 BtdyqNCFKqVgCnQoxne1Pqu4uPeqYX7jQvJIkp2o4gdjFOMVHHEYarCoQEKR2P24i1J9
 pNpq8ur/JCVRqiorhCqDxPsPVfR2THSMQ/Nfn3ectKGf7KOv6IpTUR9wtIFfi5nsfawp
 Ey8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=65/ywDMWrzjeCzGWCGYnBZeM7JciK2cM+apP1oaSTMo=;
 b=QX6xwuNx7jqpcjJ1mhoV1Oya2stazcSmXD0JAbxarj/bpxCFAcHJBEQr5AkPNJYpZU
 qoPfeh9zdn2oqvrzFH8g+fxhxO7y7/+vSQVnJ8NjD8fScqhA78L6MxEebKexIMs+ZTeK
 QHYKY+ZmDTr3Vt/8A6MNUh5D7Ygblk1udZHp0J80wtZdFdDvF+LziN9N3DEJ/ge1fuAc
 WHzds2IUv9WqQLIX8nFxPaOsXl/lqPLrXbuBirTae0CuJokyFZI7pZlYLJygeKW3yg7Y
 UQF4pHVnX/UDT2wuvoRnucMYIH6DoZJfTYEkYZbGO/CwTw5BrCHb/vuJw/EhZuIj6fk1
 tD8A==
X-Gm-Message-State: APjAAAUpCyTGgyeyJB7eupV2Ainnztv+Cx0Gxp7COPSvgYWBta30wXn/
 uKw6OTsNPqSZ66sygB/+pqPGSw==
X-Google-Smtp-Source: APXvYqzfX9Vgi3rEEb5XfbpNt8GsXKxAGn3g+PjDZmnfOKy+ytg28J4GtD1MxJfxDh88ZbWtbFr7XA==
X-Received: by 2002:adf:ce91:: with SMTP id r17mr7277133wrn.97.1568897720776; 
 Thu, 19 Sep 2019 05:55:20 -0700 (PDT)
Received: from localhost ([109.190.253.11])
 by smtp.gmail.com with ESMTPSA id q3sm10364469wrm.86.2019.09.19.05.55.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 05:55:20 -0700 (PDT)
Date: Thu, 19 Sep 2019 05:55:18 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH v2] riscv: dts: sifive: Drop "clock-frequency" property
 of cpu nodes
In-Reply-To: <1567687553-22334-1-git-send-email-bmeng.cn@gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1909190555020.13446@viisi.sifive.com>
References: <1567687553-22334-1-git-send-email-bmeng.cn@gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_055522_161907_7C1D417B 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 5 Sep 2019, Bin Meng wrote:

> The "clock-frequency" property of cpu nodes isn't required. Drop it.
> 
> Signed-off-by: Bin Meng <bmeng.cn@gmail.com>

Thanks, queued for v5.4-rc with Christoph's Reviewed-by:.

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
