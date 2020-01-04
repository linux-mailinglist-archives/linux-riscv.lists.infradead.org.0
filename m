Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B263012FF74
	for <lists+linux-riscv@lfdr.de>; Sat,  4 Jan 2020 01:14:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R48uDfvbHyWTipqs7DRRDZx/t6Cd7u9wYe+VP7psllY=; b=HE3Gfqix0nX/CxXM3ynOXe3/G
	ciECuYyy9rGhnG9VGmBrUHy4Y6w77x9mncqDeXZL8sIjEpDarvmR23InA1V+DqSqCCKKqYC6yuZTT
	7vNL0+vX47CvQTdPearhgz558lnRYZP0RkeBwkQ0Q5isASfCjP8HkTq0pkT6pjW256wQVawcNcFm7
	ooitNCX26vsDriVzQBh5oWaQgrhEumr0mOaHRSG2CFnlcxNfsENbLvFA/cx/vevs2ZJEEqgdewHrP
	3Vm3WbZ7NhXVwtbl1tG1NTP4MAX9+YBHEfaZ1TCHnoe5VD9WPbLzeYPIwvtdrkNzRMPdRAZ/qzxjI
	vZxGSwhew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inX5J-0004ra-PS; Sat, 04 Jan 2020 00:14:29 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inX5G-0004rA-MI
 for linux-riscv@lists.infradead.org; Sat, 04 Jan 2020 00:14:27 +0000
Received: by mail-il1-x144.google.com with SMTP id x5so37992612ila.6
 for <linux-riscv@lists.infradead.org>; Fri, 03 Jan 2020 16:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=R48uDfvbHyWTipqs7DRRDZx/t6Cd7u9wYe+VP7psllY=;
 b=UDM5tSa2tnGzvESZ2RN3TFiI5Ix5FJeXQRnF+uwk7iTgykQhN7Rgwin17Zc/oaSzoB
 thdbqvGXfqNLNFALqDTAn5PaElyVR1Qu0+2jNR98NvFfLrT7Zkiq6s8tVrPozbf1KNV5
 FO5Fw3f6YI4widGm9hdbjnjD4/tRZJcCkhPEUaxH4IBeKD5FrUSTf26BV2nAq+L3T+yr
 XtsrwjwsE02M2gxb8rQMnY6xtD09FTIpNYVKpUrflzhmSYKMZ34Y/lOPxqnkurCXYVwR
 4ioz2seN/aTtCKunNmrjOauHQVq55LrZLu13K0Z3rHOXBHQAn8lXMfVApnGK+OUH+NQI
 r/YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=R48uDfvbHyWTipqs7DRRDZx/t6Cd7u9wYe+VP7psllY=;
 b=kWGHEAVOfJHHV0FZt1s5ppHdV+BCGdg9vsgLodg3cHv6oZ0KQo0KRt32uLr6w5YKdt
 2HHsuoqP5851PQPlO4kG8fI1cTTqUAOaPRM6nyrcdAk5zGEVGUvIA38Cg1qQxBorkZyV
 w7izNI02fBqChjovOS3OOnCY80/Am3IxwLutvPT62nXDAv46gCsGRV9I39lnuv3IEJi3
 OCVizSWNgt5qfVTD5P77M0CfIv69T4hLIq9+67DDm/YsCAp4nCI1YW3KXsyAmCKKn+Hn
 8IuxD14MjJhhbSCRYbgFOSeoJ5zGzpcs62o7By5MoCn4+1Epgxjn/GbO0fCVNpKGRrVH
 oElQ==
X-Gm-Message-State: APjAAAUXuB+2aMYbB0CMx9P/QsgVHkUtH7mJlxOdrx0pA7vLHYRzYvqK
 cpig4KbvV8hylTuNqQc1c2D4+g==
X-Google-Smtp-Source: APXvYqwqrs2TU2jOqKw7RWdj30czb3BigPHpXVIQJGRDMYgYcLrbY5G7Hc6HGd9UN5MF5KoduUtipA==
X-Received: by 2002:a92:d610:: with SMTP id w16mr74576853ilm.283.1578096866172; 
 Fri, 03 Jan 2020 16:14:26 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id s10sm15117668ioc.4.2020.01.03.16.14.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 16:14:25 -0800 (PST)
Date: Fri, 3 Jan 2020 16:14:23 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH 1/2] riscv: ftrace: correct the condition logic in function
 graph tracer
In-Reply-To: <20191223084614.67126-2-zong.li@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.2001031613340.283180@viisi.sifive.com>
References: <20191223084614.67126-1-zong.li@sifive.com>
 <20191223084614.67126-2-zong.li@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_161426_728178_AB710129 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: anup@brainfault.org, linux-riscv@lists.infradead.org, palmer@dabbelt.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 23 Dec 2019, Zong Li wrote:

> The condition should be logical NOT to assign the hook address to parent
> address. Because the return value 0 of function_graph_enter upon
> success.
> 
> Fixes: e949b6db51dc (riscv/function_graph: Simplify with function_graph_enter())
> 

There shouldn't be a blank line here - I've removed it in the queued 
version.

> Signed-off-by: Zong Li <zong.li@sifive.com>

Thanks, queued for v5.5-rc.


- Paul

