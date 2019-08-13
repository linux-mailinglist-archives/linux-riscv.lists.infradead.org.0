Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA4F8BC4E
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 17:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txj3eeSuQHsDkqBAy2mg2zEsh7kc2O+H+dzvLIVQA/c=; b=TDVKAI6oDa9IOu
	CnI7MRcX9Hwid7FLgUcH/W+6c6c9XxaMBK+j72YcCixZJI5HQZCcS6dkePhQ9SWjvq+YMQJO5hyUl
	WBhv7u023+MhkTDhP9axDWzOggI+05wTyh2ivsZFGyCh7MgSmUUmsq95fp43cIuJsA3bQRz2SuYef
	T1pRqOQvjN+58MUCYR+21Wq9WpU+Zky420TXPEy4V92H2555LFkXtnI8nBmWgDA/HR+X8XNzTdH5Y
	40MTtAoV9uZfODhWf2fK8QLfp2U2wHKfkMIR46+tj8GzC/119IZvwW/h0Cb7FVBVRiQI2Ej+wWwMs
	Esf3UabmR4RUFdtYkmRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYHp-0000CC-UL; Tue, 13 Aug 2019 15:00:33 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYHN-0007Mt-7D
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 15:00:06 +0000
Received: by mail-ot1-x341.google.com with SMTP id g17so22638314otl.2
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 08:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=OBSBHOWBi0TEv/V0/1s9tAyHS9rLQ+x44wNZD/HrkLA=;
 b=dzbIYMoRiy9vx9rKEBuPcH/mGrArbJfiwJ7ot057oEwafi1mYopo5TS45ZGfU2Tmwe
 SLBPqgIMOrEkCecn0w57P/yGOR/d0N23xNAgHwxYLkMRv5H+NhgbobUFp2ICtHe5BRH5
 GbIm4qBk6hMIm+NPgLSYJgtDYxGY7QDf7AIpMTT6sktBJYnpLjG3FK3zI1obJ75IUzvc
 CwZwYPupTtwIOGSkKBn71MZLcIk+Gw1yi1TZVHVhBvmHg6zL06/3TKtlmSTECtHfpSl+
 SYIopnbJP7tqKWRjn6KfBfDEEk9A3lazC9zFZFqtAQ4BKm6TdFY1hy6XJ1fekCbmULHI
 RG6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=OBSBHOWBi0TEv/V0/1s9tAyHS9rLQ+x44wNZD/HrkLA=;
 b=GT9y03gfhCdWjZinCRkWoYJJiyuyvzir3tSSzW6LDUM7C68wRomuMCTKy6xIaIHCeA
 7/ABjF5B7mCLFLHlZ6E0eNRyxoEli3o+JU+Af0HAYXdMDU99Td3e2y+cZK5quYHrGgQA
 xbJ0ixUxovQCHQL8Qo/BfYcYPl4TThoT+OpSQChykaQTm2khRS3l0UnuFdKG0Kv07G5j
 Aaws7r0vHn45FjbO9dLGKnHgaiU09e+Oa4hhte1dXZ+CPcdBdOXF2sRjhgOm5KnrThRm
 cjB3MqSUxbWAv3m15VlnckUQDa90oUh6DyX+u4k/VWXt7zOMCkFfTF6FgTseBlY8/ICh
 fe3Q==
X-Gm-Message-State: APjAAAXCFqjfRunpi5pOfzmD3ryGJTeWvtwGUDc1z9mEvoJ9jfKws1k+
 V+KupMVGxMLDGybyidsgRNaC/4CXiuI=
X-Google-Smtp-Source: APXvYqzyvc5FubiG3PND2CV+AkpmsPRzV4pLljW3e2iTjvTSUTJIOAqABu4MArwAhjoI85WgQ/29gQ==
X-Received: by 2002:a05:6602:2193:: with SMTP id
 b19mr35481897iob.113.1565708402482; 
 Tue, 13 Aug 2019 08:00:02 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 j5sm81309698iom.69.2019.08.13.08.00.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 08:00:01 -0700 (PDT)
Date: Tue, 13 Aug 2019 08:00:00 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH] riscv: dts: sifive: Add missing "clock-frequency" to
 cpu0/cpu1 nodes
In-Reply-To: <1565158960-12240-1-git-send-email-bmeng.cn@gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1908130758550.27195@viisi.sifive.com>
References: <1565158960-12240-1-git-send-email-bmeng.cn@gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_080005_335049_5AA94A65 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 6 Aug 2019, Bin Meng wrote:

> Add the missing "clock-frequency" property to the cpu0/cpu1 nodes
> for consistency with other cpu nodes.
> 
> Signed-off-by: Bin Meng <bmeng.cn@gmail.com>

Is this being driven by a schema validator warning?  If not, and this 
property isn't required, it seems better just to drop it.  It seems 
useless?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
