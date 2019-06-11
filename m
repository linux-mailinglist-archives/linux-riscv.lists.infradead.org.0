Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE7D3CDAB
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 15:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJSkqB0OWyekq9jEc8+8s1w5xYqfG5vNXbmZV09GNn0=; b=un3IU5H3DEWK8s
	1MmsbLQ3nHfJ08qdvycrB7xEeurqWg09D403FAO3h8NiF9Sxkdr/+omGc0oOyXE96IGgu4qxpVFGO
	4i7iiRXKgqVF01oxTXPXjyTNvMpy0Tqc5wLPFypQQ/2Vubz/5IDmrNLRH/K8nUgKkDxDba/ccBhCp
	I5rbuGvW/3nfzKzZg2KfFkHQlDTS7S/K0ICi4y5uvshK9UaY/QpUIyk26Qa4gO1V7465Y5J9nprAT
	LPoZMbTUS5RBQAFnKAQGgWmd6iEtFst6SVkZ1Q8DvfdQLdwJgM99uo/ntlfDpYaQLjB8eVjjTcHPn
	lL8FRfrOsVSJ8pJT4mtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahEH-0003dh-T5; Tue, 11 Jun 2019 13:54:25 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahEE-0003dO-DT
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 13:54:23 +0000
Received: by mail-ed1-x542.google.com with SMTP id c26so20264451edt.1
 for <linux-riscv@lists.infradead.org>; Tue, 11 Jun 2019 06:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=OwF5NeeRbER1hXIDxCw8LYzjbLkOqAD6lkS2m+++4K8=;
 b=Bhoj3rcWetlFG0+auMFsa9MqnZhD4vDQpm+ka/S/h9k1lfu7dF04PLl+N6vCY7f6xq
 ZQJRP2BoA/YIwSKquiRCNNqPgPNP1UJPefRdyM3Fq1fcMXPP5PC5MJQ0aEk3hCbPLqNA
 lbNbUUoCKPKl0uPt4rL6w+0+UiGGSCyuryDFlep/lST0PX5FQzL++UJSJihuwa3ETqmD
 /qjOfUsIdqdMm0Uo/HN30F0l08te2885fWCKQq3hDzfT5vGTFQcND8wRiYyaVCWHCPoR
 MlIiTS7P+9/4MNn6O2o5f0IWC+hlWABVZmGbOBpukOpS3Hhk9zBL+5B+ncO9xf/faxx0
 SfnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=OwF5NeeRbER1hXIDxCw8LYzjbLkOqAD6lkS2m+++4K8=;
 b=ffXRIxD98Y/6V7DJ7m/34Y4TDqd9dWKcI3ncOAPj/fEmu0c0qAgX6SaFKoGWU5ad1e
 3PXwMxU/gTRUfe+w9AGl/mGF5uKyHBFiQ2H2pXHjIQWCvd8sIfavTfVBlLd0cOpoxxdt
 QqQUrLOqulGeHebAS0FGr/j9iytKSlT5RN4EdeLzI8W8q+7gMxQkvdGvmvqLfLdp9HUy
 VsToOENbUVgph1oTeg3yXWkfZQvV1aEKMQpZq5uzt8XYjCW4BQNziqBHNpzIDwu1G9SL
 HS+bx88BmA9f7jzdJrcELs8IzSjHasTcNWAMxHrExFA/Nr/btZ7yoWXo7uAscxpHcV92
 BjRg==
X-Gm-Message-State: APjAAAWiHeE6sk9/wqtES+2Eg0O0ZKq8eGJiMod38cPlNxZyZFrkFrDY
 ZUg877wtTm6wGjsykc7GHHxwnw==
X-Google-Smtp-Source: APXvYqzch13cw99ei2RCJ5FQmcD+gc25kVoOGOhwHdmPcbNV7vMBuyWtb90FoMcMij5SvlgsYTFNFQ==
X-Received: by 2002:a50:9832:: with SMTP id g47mr1631146edb.282.1560261261045; 
 Tue, 11 Jun 2019 06:54:21 -0700 (PDT)
Received: from localhost (mpp-cp1-natpool-1-010.ethz.ch. [82.130.71.10])
 by smtp.gmail.com with ESMTPSA id f26sm3672467edm.11.2019.06.11.06.54.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 06:54:20 -0700 (PDT)
Date: Tue, 11 Jun 2019 06:54:19 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH] riscv: export pm_power_off again
In-Reply-To: <mvm36kgpg9z.fsf@suse.de>
Message-ID: <alpine.DEB.2.21.9999.1906110653370.16050@viisi.sifive.com>
References: <mvm36kgpg9z.fsf@suse.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_065422_457660_A3207467 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019, Andreas Schwab wrote:

> Commit bf0102a0fdd9 ("riscv: call pm_power_off from machine_halt /
> machine_power_off") removed the export of pm_power_off, but it is used by
> several modules:
> 
>     ERROR: "pm_power_off" [drivers/mfd/rk808.ko] undefined!
>     ERROR: "pm_power_off" [drivers/mfd/max8907.ko] undefined!
>     ERROR: "pm_power_off" [drivers/mfd/axp20x.ko] undefined!
>     ERROR: "pm_power_off" [drivers/char/ipmi/ipmi_poweroff.ko] undefined!
> 
> Signed-off-by: Andreas Schwab <schwab@suse.de>

Thanks, queued for v5.2-rc, along with a "Fixes:" line.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
