Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB53144ADA
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Jan 2020 05:39:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ycX70yNonSao18/YakIgQAyLjBjICvcKUYrrU7H7J6w=; b=FRquX1O5MCCJeW4/ZrO5cSOXZ
	To88IiNlrdO0JiUzdwP71A4iDrVIfcDK4+UwYaw3ke6ftvKK0zg6xYIYcYDQhPR8RP7bdCMzfvZni
	NCnv3BOrIBKTETno73V0ZrRub+JeK/n2fBamIwFk+EdbIJbGBoB437dIzKwgcN/RJGfBxa5dLYI9X
	/euH8eQh9z3r5Wlkpottk2dCts6Is759Vqez3iQ2gR6Jh2dmHXiU2xTpJ1BJHg1rYFvgCGnaTfBQ7
	1T3PbYUce7ZcInSzUwVP2b+y4H9lZxMcf4yHntbdPSGwHR/JXxTC1HnNz2Sz86fnT70Akv/Dza6U5
	uk9ntpNxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu7nA-0007C6-04; Wed, 22 Jan 2020 04:39:00 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu7n6-0007Bm-EU
 for linux-riscv@lists.infradead.org; Wed, 22 Jan 2020 04:38:57 +0000
Received: by mail-io1-xd43.google.com with SMTP id c16so5349776ioh.6
 for <linux-riscv@lists.infradead.org>; Tue, 21 Jan 2020 20:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ycX70yNonSao18/YakIgQAyLjBjICvcKUYrrU7H7J6w=;
 b=IEZCSVXM1E6TtaDZHO/2X7nEvnXrThhZ40UygbwaaKpGcDDoInitSjT5Y3u0Opa3Tq
 /2U6r7Y8jxbFu02bMd+MKo4+stMUb1H87MWFMIS4gIvR8wEdi7oTX99lqfYKWNzv9WTx
 4o+bmu41ZeoCmABxa02KYX9Lgkw851us8KTrzY9HF3kAV2PZlrAuryK7OckINcS3BD8N
 AzCcGHL0x7qKGW/rODXP7lP6qGpDWOkQOKkOyWit+kcdz5cJTaiE1h+YXztRq51LvbBD
 45idZQ7puuNNGBabiAUTidGsxbHL+aSThb1NHKpWxca4OADoxsMsiFrHhKknFzmJIDpx
 Km4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ycX70yNonSao18/YakIgQAyLjBjICvcKUYrrU7H7J6w=;
 b=pqQTuZU8XfRzP2CAyenq0oaf3LO8V2ze+Y3TqipOnrEE7R/YVsX+ycwxip81hEf6kV
 fpvorUhU4Zyk+73NrP22o0awUgeFRGMF/Ov8EusLdJ+2pxi3/y3xJf4xfApEmF0mtcnk
 VNQmbOlq4VPLIib0y9L1HYkaquDy5DHumuPi7iuu2K9x2EHAKv/VEr17bgEmKKxlKvbV
 pWxYx37btwndsesI6SAa4/XaahY5dw1lvaCtgZmUjrDHGp/Hu5EU5DPcLhnf4lX4SQU3
 GTV237ibXYhPgTSd6aVab7kibwnab4LGwb0gJ/Rd3ynqLgGg/037E8e41jz5T3fWlTWk
 yEjQ==
X-Gm-Message-State: APjAAAXglhLw1R1+vIPMaKnMzUoOpV5UxzKvVDgxnBiJm6PUr7Tb2BMG
 yzjYgvVL9AJjCqugkIVUuPHW4Q==
X-Google-Smtp-Source: APXvYqzTz/u6iVvRctYBjKgBamETXpThqY24AhB/KyHkW8ZO8wu1gqUi6FXdoBtfBZkohptub96wlQ==
X-Received: by 2002:a6b:fc02:: with SMTP id r2mr5383665ioh.183.1579667934939; 
 Tue, 21 Jan 2020 20:38:54 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id j69sm13970785ilg.67.2020.01.21.20.38.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 20:38:54 -0800 (PST)
Date: Tue, 21 Jan 2020 20:38:51 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH 1/2] riscv: mm: add support for CONFIG_DEBUG_VIRTUAL
In-Reply-To: <20200102031240.44484-2-zong.li@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.2001212037460.248939@viisi.sifive.com>
References: <20200102031240.44484-1-zong.li@sifive.com>
 <20200102031240.44484-2-zong.li@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_203856_520902_492CDDD0 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu, palmer@dabbelt.com,
 linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2 Jan 2020, Zong Li wrote:

> This patch implements CONFIG_DEBUG_VIRTUAL to do additional checks on
> virt_to_phys and __pa_symbol calls. virt_to_phys used for linear mapping
> check, and __pa_symbol used for kernel symbol check. In current RISC-V,
> kernel image maps to linear mapping area. If CONFIG_DEBUG_VIRTUAL is
> disable, these two functions calculate the offset on the address feded
> directly without any checks.

Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
Tested-by: Paul Walmsley <paul.walmsley@sifive.com>


- Paul

