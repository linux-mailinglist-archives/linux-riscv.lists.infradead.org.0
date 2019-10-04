Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944E5CC29C
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 20:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZQehrW/tm3+bd+qbDbukBHSofXhZZt3M6Esfep+EFo=; b=urrI5BBc5t/BCE
	dxUiLH95Y24NI6ubR4oKf4nM0K2m9dtA8pC9qVecOR+1YOCImEjsxe6BqlmDJqdL9d4xRGb+YFV+a
	P+RDQ+3ynkb2VtTUrWVOJQj33sYPlnYE9ACFA4SdsKVL2zuChhDGkEKDjqEoRELK3XXttXfRKLMKA
	unMs+VolP/84EHxptZSknuwXD+1u1sKFYapnwuYad9nAM0+6n0I1du3D+5h1FLv8isDbpXE1diBJG
	ap/X2s0pBcfGzcnFANncAvrP6hCEa6TU6MHj3XgNO/OZdc5TijCsbj1Nzi82nkGjdEtYFRfFFawtx
	QxXM/qC2qZY3AD5LlePA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSHU-0001U7-Qn; Fri, 04 Oct 2019 18:26:20 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSHR-0001Tg-Ld
 for linux-riscv@lists.infradead.org; Fri, 04 Oct 2019 18:26:18 +0000
Received: by mail-io1-xd42.google.com with SMTP id u8so15613666iom.5
 for <linux-riscv@lists.infradead.org>; Fri, 04 Oct 2019 11:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=zZ6KISfo14kOEL5Ieq+NQ6dxv0EXjT7PvLg26kcxeKI=;
 b=NbrR9cDXdXXj8NLCbdZebA/XHymI2ZV8JNrZi82vyS6yNX64HDkBmL3dHU2O9pMZXd
 3LLoGfU/NkijXnsJuEROqNWsrS/DXjNbrPh0ZxItTdN7JNiCTJIdvi6yQJWxD7lgKLga
 3cIEYvmCSebCu1xfIcZiWmgbyh3AEYy58zrQyurM5PTA1ZLsgMRD6tp7BY9nKy0RLb3g
 kBLxjv8BEFrmpOqqIkoLo+D/2i3QRiYMtiUQQt1z0baBpLuXXgSGHnr4ZH9wX88BzFiV
 fRME8q8VKZRI8oi8yZ2MvvHHV6itWhxAVqUh5+bqWGjxTx1xeOvNVUKF1eSv2otoL4LS
 G2xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=zZ6KISfo14kOEL5Ieq+NQ6dxv0EXjT7PvLg26kcxeKI=;
 b=ly5mcZ/PLLhWaakU2V7OQD7dUr+wnmXoFhHk5+RMyhuFq6d790L6yw60AyJZKbEGQw
 MYWM21KwUzCcpDkCj8hNPf9ymBSNo9HGWFQ0niRSpl9EZazIPZeiJj3syAgf3q39WrKT
 w4T/uJKvRAgr+rY+E/0thcXtQ1JuMUH0S2GsoDQGrG7P0fyBeNL5HU0zkHsYg39geIUo
 vYEeyxE8Uo7F0Hp2f1VN7BqIDxOkk8hMNvYdAfjqS+OSU3SxAJKKtcENqROh+9/EJpCX
 WCl1GLEeQND1FXr/AnJP1cFVNvQxlE3wW+oa02B+eBCZSe6hSJvi/q77QLGwkvTeyeE9
 bnqg==
X-Gm-Message-State: APjAAAVyS+ffc8hg+Nd1WdzF2DMEp2Xx6yEMkWUfhmc9mS6G97hs//fZ
 zst+thGha2yBgC5MgRUQpN/J/g==
X-Google-Smtp-Source: APXvYqzlMOzXdKo6exiuWQJn4vxBDEZZE+59ZX+HRMzh5GgIqvHwN308u9wUqqNwO23xAYGepTM41Q==
X-Received: by 2002:a02:93e5:: with SMTP id z92mr16325106jah.8.1570213576916; 
 Fri, 04 Oct 2019 11:26:16 -0700 (PDT)
Received: from localhost (67-0-10-3.albq.qwest.net. [67.0.10.3])
 by smtp.gmail.com with ESMTPSA id i18sm3602473ilc.34.2019.10.04.11.26.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:26:16 -0700 (PDT)
Date: Fri, 4 Oct 2019 11:26:15 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH 1/4] riscv: avoid kernel hangs when trapped in BUG()
In-Reply-To: <1569199517-5884-2-git-send-email-vincent.chen@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1910041126030.15827@viisi.sifive.com>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-2-git-send-email-vincent.chen@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_112617_739118_DA873C78 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 23 Sep 2019, Vincent Chen wrote:

> When the CONFIG_GENERIC_BUG is disabled by disabling CONFIG_BUG, if a
> kernel thread is trapped by BUG(), the whole system will be in the
> loop that infinitely handles the ebreak exception instead of entering the
> die function. To fix this problem, the do_trap_break() will always call
> the die() to deal with the break exception as the type of break is
> BUG_TRAP_TYPE_BUG.
> 
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>

Thanks, queued for v5.4-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
