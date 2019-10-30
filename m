Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9781BE978C
	for <lists+linux-riscv@lfdr.de>; Wed, 30 Oct 2019 09:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWFt+qe1AUwx6d56fDbQT302Vg0r4TN3NVGSXhi2KV4=; b=CjQIpq/Hrutc/b
	nfPkwtJHmOFvrjwiBPf3A256lGb2c/ItNh/hX13lQiVpe1mVKS1tWoTq26pVI2aCyzAqQrii4S6c4
	jbNaVVIhhfznHdeYSbioXWRn29uB1CaarvU9lI+OkD/cfo5TGN0Ey0U4Emje/ni9W0mjU2IPxSaj4
	UU7Kjcj5cRcDZEar5xLAIKsHxdgQ9PtI7q3EwIPLCBQQW9ZlvThWZF+hk/hzV1XGgaigcTZSThc4R
	kWs1HGkQYj3j+VgOT5uhokIRuQnesvSrjjl8VrwrUhjghK9GYSyt4Tz6K8joX7E7WdL+md8LNrxSt
	PFYpk1NopVVKSgtFpgEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPiwx-0002dY-RJ; Wed, 30 Oct 2019 08:03:27 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPiwu-0002cb-Gf
 for linux-riscv@lists.infradead.org; Wed, 30 Oct 2019 08:03:25 +0000
Received: by mail-il1-x141.google.com with SMTP id z10so1288658ilo.8
 for <linux-riscv@lists.infradead.org>; Wed, 30 Oct 2019 01:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=LqFfQlPX22DAu2QQKOl89RuFCVvQ73FaW2DTKQWr2N8=;
 b=l0vYPah4wTPHZJawmtrZzxfnbMqWFBruSBwhoiny920aPMawcP0qvwMdz1Iq4oFErF
 xhPdAV7/ACTUz0kzQ8zLEK0ew+LW6WfVr/H8baxdy74XaeMmmHoETP2Ccr8njTUF9GEe
 j+zarkmIt+fjLDEGBUpbPFSLhNWVSGFlsoFIDd0OjC1EmVjwlGGsEWJVto0FV/3TghiL
 X3TxeawS2Ztx4xXuKyr8KZ1OMhY4D9UScHs6q5OxIHT6w8KvR+BTFc7tz0tVJELa9qbB
 tiutiEhaJFU51uN2IxAZMUtWhPUh+w4flEpmviaG3gFIwvB/Jy3Pu/IhyD1fECCkl2QY
 lSEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=LqFfQlPX22DAu2QQKOl89RuFCVvQ73FaW2DTKQWr2N8=;
 b=j2hbv9q4Lsb3PcbxjCR3GSmFdCNHwNNkr/euFzhxnXwRYkLsR/kb90aW6KQR69Olpt
 UJpjhQrSGSRcixODBlPFalVbkkteGjcW5SOaS/grQtAfUhQlIzsONOModrD8bAGx7AAX
 kghzqjzIGoZglB39qMKmUCFNqhaV2zFFSJCLIgGJSRVq2gZcfpMZvJXS60J1o3OQFvGl
 qAADnsm1wSa+pYQzdoPtXIuA0NClBoqX6nHJo/WkypyVa0PxCMrmVPB2uDeminSQYbaE
 IWfmoU5UcB1y/SRArbQ6ne6+z43dnQ03zqKitlQ1MBh6vc2JUrBpZz5jqFwy+eNg6d/W
 /enw==
X-Gm-Message-State: APjAAAUkZGg3aR7sUf0K80JiHomGdQW9swxLFm/lmvM+8iOCQT1CWADq
 rsnvS6QF0k6eNDfv+9lO9iUoVQ==
X-Google-Smtp-Source: APXvYqwsxsTealkBSzXUDPGAKeJYeaYcUdHD/8GBgI8GmTRJS3xk2OHkmsBNyh1BSALOxYVarlZppA==
X-Received: by 2002:a05:6e02:792:: with SMTP id
 q18mr30146916ils.58.1572422603154; 
 Wed, 30 Oct 2019 01:03:23 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id t27sm222986ila.17.2019.10.30.01.03.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 01:03:22 -0700 (PDT)
Date: Wed, 30 Oct 2019 01:03:13 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH] MAINTAINERS: Change to my personal email address
In-Reply-To: <20191030043916.27916-1-palmer@dabbelt.com>
Message-ID: <alpine.DEB.2.21.9999.1910300102590.23683@viisi.sifive.com>
References: <20191030043916.27916-1-palmer@dabbelt.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_010324_562448_D2D0900D 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 29 Oct 2019, Palmer Dabbelt wrote:

> From: Palmer Dabbelt <palmer@sifive.com>
> 
> I'm leaving SiFive in a bit less than two weeks, which means I'll be
> losing my @sifive email address.  I don't have my new email address yet,
> so I'm switching over to my personal address instead.
> 
> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
> Signed-off-by: Palmer Dabbelt <palmer@dabbelt.com>

Thanks, queued for v5.4-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
