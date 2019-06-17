Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D83448528
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 16:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dq6hDGJvX1DizI6/c/hbsYSf0fmEZ8S4baQom8WIDBU=; b=j9Gi7yzpsX/ifS
	WhW6h3/kWQxGMTSXm+sjrvcjqXYgt+2apBMtVCnfAYgqZsEAzBoVeT3t/0n4zRVJn1e0Ri8/KBhEj
	zz0VdX3ci3vbwv+Ba7CTVxMh7qbFHvMU1ezkyyTqbh5O3BvJ4Zj2p93OI/T2ovH/kBjPvHKiOpnN1
	vR9BsseoV3ZcvnCPYoyhIrcSQfVlVy8mAaGyzRQ6HmPi3AVnlqwHQNFXfmrZS8d8m7iIoGHB4dCwA
	21Lt0b4fLXb4Cxn2ChsW+ErYY+fvePk0In0cb9PXxyoVP1nk6hZMu8NXC1ft0qIj61qNZ9Vy5kH5B
	SeMOzz6G7qA2h8/jDMpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcsUz-0007KP-IL; Mon, 17 Jun 2019 14:20:41 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsUv-0007JN-Pj
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 14:20:39 +0000
Received: by mail-ed1-x52a.google.com with SMTP id e3so16363492edr.10
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 07:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=lPDqMdPEKR2PzqaGXWoGDd7T5h4jBpHExcweaLaSSK0=;
 b=Iay63UGcYlvzI9g3XDbohxpgexk9t4pKF6mBC7NJEA0o2i/h7b/F3pyRiN7Ztb5yhg
 IGbfDCuvvjULm7skN4POwuaHWx33fxSiMI7qeoYiZf+H4tqbmlcbZc1tb396Gn9C+r0j
 wLA9hWmoRSXQE1p8DWJnjWib2J/4Kaz2VWSVHI688WdK0no2cBvovBdcdntWCHAxQ946
 z2JoMRtEJvhNYoUFUu3ZKtlUkW3DiKCMs5jrJfXK1Cqn2Xs4IjIEY8K6M8szn+ozlS1c
 EZYkDBaWPauhcR4yqdZ4NLQpUqF7pdJSAhwbay0oiAGr8k3TfraHW12LWhIdIN34y+0A
 xU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=lPDqMdPEKR2PzqaGXWoGDd7T5h4jBpHExcweaLaSSK0=;
 b=KnnuRKnxx7otg2U+nwYm0J61nZNNv52ajSlVR+x16Wd8xfXuhZwxTmIj7z5r5Y4fA4
 6OFYAauERb/Mb5Vbziz8ll0nWnNzNJJxmzq2cgHQXbw1r7BL8z/Rnk2n3Q6b7TFEUYvC
 B354Mb6adK6HC2H8ytJd4tf360AJA7nlSrbSMqx0bgRy0WSxvmoVN0FlMCd78+7lj3Te
 fjWbIheiPDNV8u/D8+fciBtg5TRJ62DZj2836mMDPSGinJtvRBHp164O2eAc2DvXFQe2
 p6hvVcMESosb+7lMKqJdtJnFasC0QubNf3QtrAIvWEJtm7qrw78uuRYM60PpRZv4jsED
 Z9yw==
X-Gm-Message-State: APjAAAW2kEfFzfUtHraLuKCcbnC9zo4hHjgalc/P+xctuhtKA7lzd35g
 m8yZjClaryTQQOwMLw4923tYdw==
X-Google-Smtp-Source: APXvYqyNGHMS9Mr0hlgx8DUwk8VB/wUtnm/TqHyh3muEpDOB7qL1OTl8vAIIxlvfK0LsosNfRT+dCw==
X-Received: by 2002:a50:95ae:: with SMTP id w43mr90466777eda.115.1560781232849; 
 Mon, 17 Jun 2019 07:20:32 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id w27sm2071922edw.63.2019.06.17.07.20.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 07:20:32 -0700 (PDT)
Date: Mon, 17 Jun 2019 07:20:31 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
In-Reply-To: <F48A4F7F-0B0D-4191-91AD-DC51686D1E78@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1906170715350.32654@viisi.sifive.com>
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
 <mvmpnnc5y49.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170305020.19994@viisi.sifive.com>
 <mvmh88o5xi5.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170419010.19994@viisi.sifive.com>
 <F48A4F7F-0B0D-4191-91AD-DC51686D1E78@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_072037_837047_D6F620CA 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, davem@davemloft.net,
 Andreas Schwab <schwab@suse.de>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org,
 Jim Jacobsen <jamez@wit.com>, netdev@vger.kernel.org, ynezz@true.cz,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019, Troy Benjegerdes wrote:

> Have we documented this tx clock switch register in something with a
> direct URL link (rather than a PDF)?

The SiFive FU540 user manual PDF is the canonical public reference:

https://static.dev.sifive.com/FU540-C000-v1.0.pdf

This practice aligns with other SoC vendors, who also release PDFs.

The relevant Ethernet documentation, including register maps, is in 
Chapter 19.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
