Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDE2122276
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 04:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=agmeJJwHgutPi6V5jPwGQYgXQ3xxL76EKh3hWRk6sjs=; b=l0c8sACe30gpTtRf2oHZvG+Rk
	OETaXXQYrewlXoFBFjU1XNOMFWO6wSl3jXFcTOgcG02XT5aM4cGuoT8TAFxkPTtaG0xrAdj1Q6GdM
	rDMmMJyGnr0uUqRVnrmQUw8OPHpcQd89ZjR/EhdgJgHQz4t7rrzn4DPV67Pin80YkGmpp+pWmmxmF
	oW4M1V8/PIgPaal+J4z3WFymQtzZCk+fJMSm4R7xBvYjk2MJqyZdCSydJlsXZ3+rf7eMpbC4EAmgR
	oGCcNtwQydU9AXaGjQGUu31F/MkEj8MtASJH5AxctGp3sXstGvrM+HPNBxJj++Eupi9s9BBgaOmLQ
	o9LOsLvRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih3NP-00076A-Pv; Tue, 17 Dec 2019 03:18:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih3NM-00075T-9I
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 03:18:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id z3so3879415plk.6
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 19:18:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=agmeJJwHgutPi6V5jPwGQYgXQ3xxL76EKh3hWRk6sjs=;
 b=V4TfRhRgroa8mXVVJXnFeVpyJc7ZKoYOuJQZF0r7WNOZSRM1GzwRQmStlmQRL1VXLP
 WkVEzqzQQYZUUpUWZ5njli4dzPmcmc7fVCibo8MOa7uTpRh3gYCgm8nwaH7LxS9xeIQk
 IMHpMPq07rkPzxwbh9bHYhiL99ufOnYTS1geio+okGkzkSnFqcrRqaY9WyoQgqNa5FRP
 uNu8UOeiz7nIS/5jWwzruK53Fgdxe3MurwZJQlEHiDjiJr37CLoBc5yPLhZN4MGHDPXN
 RdKKugfMMFpH9BdQROAe7Onyvcvz0OpSPQDqH372xCckxwhrgkgiyYmfJBF/Ek1vfCZf
 Pilg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=agmeJJwHgutPi6V5jPwGQYgXQ3xxL76EKh3hWRk6sjs=;
 b=hm8BusrG8UEkCtwpxjx2kA99vdn7w4omRNuW2n9cKshwknl+o6a6OTcgK2/5zHZwu9
 ZOAKHiCsXI9vhSOqGfyIeEdO8Mc+TN4ElwWdELgw5MtqKmMV83tu7hmPDpeZ2WYiKjEg
 fsmygL8av7qciJlTlv13w7lM3NWsgGXbeSoI/4SqAaNrG6DxO52uCSX61rK+GA0wLASs
 wGgB1jub5H6VutHVkkKvJjIYB+vq6rnfsMTQ9GuYDS5MtnYvGWxHE4dlUR9GOSWR5joj
 J6ZS8FWyBmc9f0fE5OaiZs1cpVNLIydCb1vfvq0DqXiYUuZZz4cJ+xPtSscRzfnGA+PK
 5f8A==
X-Gm-Message-State: APjAAAV82vP43NqM8Ev54DtORu/RZV/h/F1tI4bulqKAnHSFwLtjbvDh
 EAM5RTq3K6AQHfn33G/hrmbADdGulAo=
X-Google-Smtp-Source: APXvYqxy02HSPh49Ch9sM24x3WbbcqSACRNLlkhhrwG6Omk42qWsbbJC2iHqcV+NpsLXw+rlfCLQqg==
X-Received: by 2002:a17:902:9a92:: with SMTP id
 w18mr19975363plp.91.1576552699188; 
 Mon, 16 Dec 2019 19:18:19 -0800 (PST)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id 24sm24713060pfn.101.2019.12.16.19.18.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 19:18:18 -0800 (PST)
Date: Mon, 16 Dec 2019 19:18:15 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH 10/12] riscv: add nommu support
In-Reply-To: <CAEn-LToO9MjMr6ipXO1pCGG7H-bunHHAVyYkknOZ2dixOOG4+w@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1912161917350.64438@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-11-hch@lst.de>
 <alpine.DEB.2.21.9999.1911171511170.5296@viisi.sifive.com>
 <CAEn-LToO9MjMr6ipXO1pCGG7H-bunHHAVyYkknOZ2dixOOG4+w@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_191820_358280_13F9A977 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019, David Abdurachmanov wrote:

> This seems to break kernel (5.5-rc2) compilation in Fedora/RISCV. The
> function above needed vmemmap macro.

Thanks, will take a look.


- Paul

