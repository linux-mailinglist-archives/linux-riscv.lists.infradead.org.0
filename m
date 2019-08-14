Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4252E8C775
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 04:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q1PgU1djSNH2yQA+2a7ghYm7VCDoJRCOAJlQMzFK7IM=; b=VV1O6scOSvAAlS
	R3fHBwaUFgZUnC4n2W14ff25ii0QigkRX1tYGO/7BeOlxJkmw5NBhxnS1NDAAh6YeauA/30ed8q13
	K2jGf7I24GFgIM6qI8dt4wA0lmy/Dc0+27GEl1ApDrn/SncaOopgYT10V8Wt0c24w2QkRsM8YBF47
	CSmiqn63u1R0YVjf5RfyeibsnjK9BJ+Gg++Ux6+0cLE85MVf0v76Jz+gyGUx7kxXTc3cskyxSk0nX
	7OXKJd4XP8l9t3viFwhIdm0wRcZ/87pwSRyS13NObxWiL9xNwZ8kpJgnSWE/OHNU+3uiS4xNzHnVj
	NA5xUXyzXZ+G+ggbAhAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxixn-0000BG-Lk; Wed, 14 Aug 2019 02:24:35 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxixj-00009c-Rl
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 02:24:33 +0000
Received: by mail-ot1-x344.google.com with SMTP id z17so60418064otk.13
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 19:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=djwbOoU5ileobHGHzugslDxkoFaMGMiR2MOTUznWvvE=;
 b=aUTYvZKENV7jx2SUF1Rt71AnU/eAfEOkOw82G9L2RA4jgcGrfvsbDozKAy/0Jd7xzj
 dEZxsN1WCqx+vRxpE+2VZIaqHXxgGM5SLtGhQuB5JOJH7Was1RG0JSZPOdWVRH17vJD2
 dLbkqTIpgKpxrzt66K9NiV9wke8kgqU+WNqLwmY0uSzAoZ4hWXbAQ1/JcyQuQltNiudT
 cyh2KV2Q8y2+x1/+ytCHsMqZ5V79Njok7qu20FaXuZBg3e0SSQXi+Cu3Kj0Bt/XuAY6n
 aVa9W6MzOIQuxeTLAO8rfrpJRidlychF7eKk1l6HDENnpfX0EUMfkwik3TNXY4v+tciy
 a7Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=djwbOoU5ileobHGHzugslDxkoFaMGMiR2MOTUznWvvE=;
 b=ZJpxj1kWmp4EZ6nQxekficwPzGB9FBXvWoTAYQZ+D4n0xuTmyw9C3/xkYHw2r93+da
 mZ2UEx8+E0P8gh0p6ytGvup1bVBF8oQ3iWFFbJWMfpPsbXZdzHGjGBbxWjPc/DQf+RM4
 hlSGyU8vuYrev/Iq4Bx7MpDq5OK0CA7srGEXpmB8yA6zHMc44M/HbHr3Gm50EF+MGFGI
 e80sZtdQJTCQZKOip8b79KjXN6/o1RDiiBlTBQ3fzynh4R0Qjrk+qF2/vvO4/0Y/Xi8q
 V0B82LABtP0j5TTtwUAhobnrspINkMPnCGmI8B0fvW+X66YarHkliH4bRqI/xMAFudpH
 CZBQ==
X-Gm-Message-State: APjAAAW/i/h4VvNWjQp08NYihUMhyYSESftBDQiL7XcBJJ+/voT8JCa/
 HJWPZOCDtqHweNkGzv7jqAlVRYcBL/U=
X-Google-Smtp-Source: APXvYqx+xLwy91cVwpgk6Jxu4j6BEJ3bP1Um+itheAYr7zgJCtQf5lOwrktHCYRgtlFyKi9r/5/W+g==
X-Received: by 2002:a5d:9453:: with SMTP id x19mr2569033ior.183.1565749470857; 
 Tue, 13 Aug 2019 19:24:30 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 a8sm79125353ioh.29.2019.08.13.19.24.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 19:24:30 -0700 (PDT)
Date: Tue, 13 Aug 2019 19:24:30 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alistair Francis <alistair.francis@wdc.com>
Subject: Re: [PATCH 2/2] riscv: defconfig: Update the defconfig
In-Reply-To: <20190813233230.21804-2-alistair.francis@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908131924210.19217@viisi.sifive.com>
References: <20190813233230.21804-1-alistair.francis@wdc.com>
 <20190813233230.21804-2-alistair.francis@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_192431_966184_8D714FC6 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alistair23@gmail.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019, Alistair Francis wrote:

> Update the defconfig:
>  - Add CONFIG_HW_RANDOM=y and CONFIG_HW_RANDOM_VIRTIO=y to enable
>    VirtIORNG when running on QEMU
> 
> Signed-off-by: Alistair Francis <alistair.francis@wdc.com>

Thanks, queued for v5.3-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
