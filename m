Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAC7B64F4
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Sep 2019 15:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyVKgS+d/hoKQu/4Tz+ozTJ84fNQ6wzx2nTz2i62ico=; b=u3G/vemOr5pjeV
	QC51YS6BdJDhJOTyahe2ycOE+bXqAI4DM7xJIx4BUA3XJxaHSIJDpcxacoNOYBl80Aedm2/nZiXbM
	vqeQDxt+GnSYPyZDkaeIYPu+xO1j1i4jf0bsYKbpEGrzMQds93Hs1WaoriMamBvUin3Z5y7pp0t6r
	+H0p85bhSyTlkCk72SyL4igSV1K3daBNiE/Awm/JKOUe4bW6ygS48F4NLXVOxn/h2hUNqP5nxvfc4
	5CFXuKTUPQoY/Hsz+vyQC5e7Be2hjiaAgAQTSJt6aTpvDwgF099r4MnbZ1oES173MPxXd2Be/iC1w
	i5ZYM2C29uc4N1Z73ivw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaGP-0007e2-JY; Wed, 18 Sep 2019 13:44:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaGM-0007db-6n
 for linux-riscv@lists.infradead.org; Wed, 18 Sep 2019 13:44:55 +0000
Received: from mail-yw1-f51.google.com (mail-yw1-f51.google.com
 [209.85.161.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1252521907
 for <linux-riscv@lists.infradead.org>; Wed, 18 Sep 2019 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568814293;
 bh=NsTNEQ9pNzRNy7TB1KzHS8aqTaRQ1Xa/uYBY9oHJ228=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pFhYuyuXLzsolpe52rmJvLGjKw+WqQHA+IXHkmK3FQY5OJW6t8t5r513QDLen1/A8
 8Bl4ZRpXnW5TB9BM15e37DNN2AcaofIOB3kFt4OonPv9/3t5Pc8vH5FyvEnVgQ4Sde
 ideuQ5H2ClWdR+Vs9SwvJ/hq9qYksSqwwxI5i3n0=
Received: by mail-yw1-f51.google.com with SMTP id q7so2468025ywe.10
 for <linux-riscv@lists.infradead.org>; Wed, 18 Sep 2019 06:44:53 -0700 (PDT)
X-Gm-Message-State: APjAAAVUl6saPNwIrHYY2ELgKkZMJni/QkcW3Gk2SMpdMyQ4BRosoYFe
 nO/jZtmbwKaSNQkua2Ud0pr3xEvkrucapWg2tQ==
X-Google-Smtp-Source: APXvYqzAWf80PXPbYa5YFe71i5C6DTZvSwAPx2GlseUyJKphr7cVsIZ3oHwMTHgheYaO/eC4h5CybbQoMaq3TLVKRw4=
X-Received: by 2002:a81:9182:: with SMTP id i124mr3297116ywg.279.1568814292316; 
 Wed, 18 Sep 2019 06:44:52 -0700 (PDT)
MIME-Version: 1.0
References: <1568804927-13565-1-git-send-email-pragnesh.patel@sifive.com>
In-Reply-To: <1568804927-13565-1-git-send-email-pragnesh.patel@sifive.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 18 Sep 2019 08:44:39 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJhH2x6xto9yJ+0V5YiYn9J_Y_bABG4_N6MK0M3XFCPqg@mail.gmail.com>
Message-ID: <CAL_JsqJhH2x6xto9yJ+0V5YiYn9J_Y_bABG4_N6MK0M3XFCPqg@mail.gmail.com>
Subject: Re: [PATCH v2] spi: dt-bindings: Convert spi-sifive binding to
 json-schema
To: Pragnesh Patel <pragnesh.patel@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_064454_269887_D6C26C2A 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 6:10 AM Pragnesh Patel
<pragnesh.patel@sifive.com> wrote:
>
> Convert the spi-sifive binding to DT schema format.
>
> Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
> ---
>
> Changes in v2:
> - Remove address-cells and size-cells property
> - Added valid values for sifive,fifo-depth and sifive,max-bits-per-word
>   property
>
>  .../devicetree/bindings/spi/spi-sifive.txt         | 37 ----------
>  .../devicetree/bindings/spi/spi-sifive.yaml        | 86 ++++++++++++++++++++++
>  2 files changed, 86 insertions(+), 37 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-sifive.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/spi-sifive.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
