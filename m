Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C913A66467
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jul 2019 04:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wb83Q16AftGJ+OKG4BZqvzhcfY3ujLGRIdGvqxSuImw=; b=rj4l+RO1k7vDU0
	znStUmEtLK4qeTFJPqyosIhZ+xU00d3lLWMQ4ozt+GP8Pe4IC/7WSWjday+Ef87ix6aAROhSwUT7E
	bmImSBy5OKdmsjzEEgY81DeEHsvYBT9Z8aVzGKki+mmfRR/dvSEBK+uUu2AA4DbVKi5UIJrf1533k
	HnZTSgIpUE/ruMnDEUwfGETEDkXnqS9Y8Wqriax6zqVcVuCIN8P8mvlImOSjTm919xgNQ9FE1oVo2
	Beos6ie0oei8crW9sd+SilXw0GH7/eej65OFs+J3f2kAroPN1NceO5XVt1o089I81gz7poHfD2T+v
	ZvVZfW7WpEbIDUgS69mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hllFa-0003Ib-7n; Fri, 12 Jul 2019 02:25:30 +0000
Received: from out30-130.freemail.mail.aliyun.com ([115.124.30.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hllAs-0007Sf-3E; Fri, 12 Jul 2019 02:20:42 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R101e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04407; MF=alex.shi@linux.alibaba.com; NM=1;
 PH=DS; RN=28; SR=0; TI=SMTPD_---0TWfJjMr_1562898034; 
Received: from localhost(mailfrom:alex.shi@linux.alibaba.com
 fp:SMTPD_---0TWfJjMr_1562898034) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 12 Jul 2019 10:20:35 +0800
From: Alex Shi <alex.shi@linux.alibaba.com>
To: linux-doc@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH 11/12] Documentation/x86: repointer docs to Documentation/arch/
Date: Fri, 12 Jul 2019 10:20:17 +0800
Message-Id: <20190712022018.27989-11-alex.shi@linux.alibaba.com>
X-Mailer: git-send-email 2.19.1.856.g8858448bb
In-Reply-To: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
References: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_192038_728681_F34D8829 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-fbdev@vger.kernel.org, linux-ia64@vger.kernel.org,
 kvm@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linux-mips@vger.kernel.org,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Alex Shi <alex.shi@linux.alibaba.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org, x86@kernel.org,
 xen-devel@lists.xenproject.org, virtualization@lists.linux-foundation.org,
 platform-driver-x86@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Tony Luck <tony.luck@intel.com>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Changbin Du <changbin.du@intel.com>,
 linux-security-module@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

U2luY2Ugd2UgbW92ZSBEb2N1bWVudGF0aW9uL3g4NiBkb2NzIHRvIERvY3VtZW50YXRpb24vYXJj
aC94ODYKZGlyLCByZWRpcmVjdCB0aGUgZG9jIHBvaW50ZXIgdG8gdGhlbS4KClNpZ25lZC1vZmYt
Ynk6IEFsZXggU2hpIDxhbGV4LnNoaUBsaW51eC5hbGliYWJhLmNvbT4KQ2M6IEpvbmF0aGFuIENv
cmJldCA8Y29yYmV0QGx3bi5uZXQ+CkNjOiBUb255IEx1Y2sgPHRvbnkubHVja0BpbnRlbC5jb20+
CkNjOiAiSC4gUGV0ZXIgQW52aW4iIDxocGFAenl0b3IuY29tPgpDYzogeDg2QGtlcm5lbC5vcmcK
Q2M6IFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KQ2M6IENoYW5nYmluIER1
IDxjaGFuZ2Jpbi5kdUBpbnRlbC5jb20+CkNjOiBsaW51eC1kb2NAdmdlci5rZXJuZWwub3JnCkNj
OiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCkNjOiB4ZW4tZGV2ZWxAbGlzdHMueGVucHJv
amVjdC5vcmcKQ2M6IHBsYXRmb3JtLWRyaXZlci14ODZAdmdlci5rZXJuZWwub3JnCkNjOiBrdm1A
dmdlci5rZXJuZWwub3JnCkNjOiB2aXJ0dWFsaXphdGlvbkBsaXN0cy5saW51eC1mb3VuZGF0aW9u
Lm9yZwpDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtc2VjdXJpdHktbW9kdWxl
QHZnZXIua2VybmVsLm9yZwotLS0KIERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvaHctdnVsbi9t
ZHMucnN0ICAgICAgICAgICAgfCAgMiArLQogRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9rZXJu
ZWwtcGFyYW1ldGVycy5yc3QgICAgICB8ICA2ICsrKy0tLQogRG9jdW1lbnRhdGlvbi9hZG1pbi1n
dWlkZS9rZXJuZWwtcGFyYW1ldGVycy50eHQgICAgICB8ICA4ICsrKystLS0tCiBEb2N1bWVudGF0
aW9uL2FkbWluLWd1aWRlL3Jhcy5yc3QgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIERvY3Vt
ZW50YXRpb24vYXJjaC94ODYveDg2XzY0LzVsZXZlbC1wYWdpbmcucnN0ICAgICAgfCAgMiArLQog
RG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni94ODZfNjQvYm9vdC1vcHRpb25zLnJzdCAgICAgICB8ICA0
ICsrLS0KIC4uLi9hcmNoL3g4Ni94ODZfNjQvZmFrZS1udW1hLWZvci1jcHVzZXRzLnJzdCAgICAg
ICAgfCAgMiArLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jvb3Rpbmctd2l0aG91dC1vZi50
eHQgICAgICB8ICAyICstCiBEb2N1bWVudGF0aW9uL3N5c2N0bC9rZXJuZWwudHh0ICAgICAgICAg
ICAgICAgICAgICAgIHwgIDQgKystLQogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICA0ICsrLS0KIGFyY2gvYXJtL0tjb25maWcgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMiArLQogYXJjaC94ODYvS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEyICsrKysrKy0tLS0tLQogYXJjaC94
ODYvS2NvbmZpZy5kZWJ1ZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBh
cmNoL3g4Ni9ib290L2hlYWRlci5TICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIg
Ky0KIGFyY2gveDg2L2VudHJ5L2VudHJ5XzY0LlMgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgMiArLQogYXJjaC94ODYvaW5jbHVkZS9hc20vYm9vdHBhcmFtX3V0aWxzLmggICAgICAgICAg
ICAgICB8ICAyICstCiBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9wYWdlXzY0X3R5cGVzLmggICAgICAg
ICAgICAgICAgIHwgIDIgKy0KIGFyY2gveDg2L2luY2x1ZGUvYXNtL3BndGFibGVfNjRfdHlwZXMu
aCAgICAgICAgICAgICAgfCAgMiArLQogYXJjaC94ODYva2VybmVsL2NwdS9taWNyb2NvZGUvYW1k
LmMgICAgICAgICAgICAgICAgICB8ICAyICstCiBhcmNoL3g4Ni9rZXJuZWwva2V4ZWMtYnppbWFn
ZTY0LmMgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIGFyY2gveDg2L2tlcm5lbC9wY2ktZG1h
LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMiArLQogYXJjaC94ODYvbW0vdGxiLmMg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBhcmNoL3g4Ni9wbGF0
Zm9ybS9wdmgvZW5saWdodGVuLmMgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMv
dmhvc3Qvdmhvc3QuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMiArLQogc2Vj
dXJpdHkvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICst
CiB0b29scy9pbmNsdWRlL2xpbnV4L2Vyci5oICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
IDIgKy0KIHRvb2xzL29ianRvb2wvRG9jdW1lbnRhdGlvbi9zdGFjay12YWxpZGF0aW9uLnR4dCAg
ICAgfCAgNCArKy0tCiAyNyBmaWxlcyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspLCA0MSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2h3LXZ1bG4v
bWRzLnJzdCBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvaHctdnVsbi9tZHMucnN0CmluZGV4
IGUzYTc5NmMwZDNhMi4uMzAzMjI4MzgwZmRjIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2Fk
bWluLWd1aWRlL2h3LXZ1bG4vbWRzLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRl
L2h3LXZ1bG4vbWRzLnJzdApAQCAtNTgsNyArNTgsNyBAQCBCZWNhdXNlIHRoZSBidWZmZXJzIGFy
ZSBwb3RlbnRpYWxseSBzaGFyZWQgYmV0d2VlbiBIeXBlci1UaHJlYWRzIGNyb3NzCiBIeXBlci1U
aHJlYWQgYXR0YWNrcyBhcmUgcG9zc2libGUuCiAKIERlZXBlciB0ZWNobmljYWwgaW5mb3JtYXRp
b24gaXMgYXZhaWxhYmxlIGluIHRoZSBNRFMgc3BlY2lmaWMgeDg2Ci1hcmNoaXRlY3R1cmUgc2Vj
dGlvbjogOnJlZjpgRG9jdW1lbnRhdGlvbi94ODYvbWRzLnJzdCA8bWRzPmAuCithcmNoaXRlY3R1
cmUgc2VjdGlvbjogOnJlZjpgRG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni9tZHMucnN0IDxtZHM+YC4K
IAogCiBBdHRhY2sgc2NlbmFyaW9zCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1
aWRlL2tlcm5lbC1wYXJhbWV0ZXJzLnJzdCBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2Vy
bmVsLXBhcmFtZXRlcnMucnN0CmluZGV4IGRjMjgzZGNmZmFlOC4uN2MzMjQ4NDgxMWM4IDEwMDY0
NAotLS0gYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0ZXJzLnJzdAor
KysgYi9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0ZXJzLnJzdApAQCAt
MTY3LDcgKzE2Nyw3IEBAIHBhcmFtZXRlciBpcyBhcHBsaWNhYmxlOjoKIAlYODYtMzIJWDg2LTMy
LCBha2EgaTM4NiBhcmNoaXRlY3R1cmUgaXMgZW5hYmxlZC4KIAlYODYtNjQJWDg2LTY0IGFyY2hp
dGVjdHVyZSBpcyBlbmFibGVkLgogCQkJTW9yZSBYODYtNjQgYm9vdCBvcHRpb25zIGNhbiBiZSBm
b3VuZCBpbgotCQkJRG9jdW1lbnRhdGlvbi94ODYveDg2XzY0L2Jvb3Qtb3B0aW9ucy5yc3QuCisJ
CQlEb2N1bWVudGF0aW9uL2FyY2gveDg2L3g4Nl82NC9ib290LW9wdGlvbnMucnN0LgogCVg4NglF
aXRoZXIgMzItYml0IG9yIDY0LWJpdCB4ODYgKHNhbWUgYXMgWDg2LTMyK1g4Ni02NCkKIAlYODZf
VVYJU0dJIFVWIHN1cHBvcnQgaXMgZW5hYmxlZC4KIAlYRU4JWGVuIHN1cHBvcnQgaXMgZW5hYmxl
ZApAQCAtMTgxLDEwICsxODEsMTAgQEAgSW4gYWRkaXRpb24sIHRoZSBmb2xsb3dpbmcgdGV4dCBp
bmRpY2F0ZXMgdGhhdCB0aGUgb3B0aW9uOjoKIFBhcmFtZXRlcnMgZGVub3RlZCB3aXRoIEJPT1Qg
YXJlIGFjdHVhbGx5IGludGVycHJldGVkIGJ5IHRoZSBib290CiBsb2FkZXIsIGFuZCBoYXZlIG5v
IG1lYW5pbmcgdG8gdGhlIGtlcm5lbCBkaXJlY3RseS4KIERvIG5vdCBtb2RpZnkgdGhlIHN5bnRh
eCBvZiBib290IGxvYWRlciBwYXJhbWV0ZXJzIHdpdGhvdXQgZXh0cmVtZQotbmVlZCBvciBjb29y
ZGluYXRpb24gd2l0aCA8RG9jdW1lbnRhdGlvbi94ODYvYm9vdC5yc3Q+LgorbmVlZCBvciBjb29y
ZGluYXRpb24gd2l0aCA8RG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni9ib290LnJzdD4uCiAKIFRoZXJl
IGFyZSBhbHNvIGFyY2gtc3BlY2lmaWMga2VybmVsLXBhcmFtZXRlcnMgbm90IGRvY3VtZW50ZWQg
aGVyZS4KLVNlZSBmb3IgZXhhbXBsZSA8RG9jdW1lbnRhdGlvbi94ODYveDg2XzY0L2Jvb3Qtb3B0
aW9ucy5yc3Q+LgorU2VlIGZvciBleGFtcGxlIDxEb2N1bWVudGF0aW9uL2FyY2gveDg2L3g4Nl82
NC9ib290LW9wdGlvbnMucnN0Pi4KIAogTm90ZSB0aGF0IEFMTCBrZXJuZWwgcGFyYW1ldGVycyBs
aXN0ZWQgYmVsb3cgYXJlIENBU0UgU0VOU0lUSVZFLCBhbmQgdGhhdAogYSB0cmFpbGluZyA9IG9u
IHRoZSBuYW1lIG9mIGFueSBwYXJhbWV0ZXIgc3RhdGVzIHRoYXQgdGhhdCBwYXJhbWV0ZXIgd2ls
bApkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9rZXJuZWwtcGFyYW1ldGVy
cy50eHQgYi9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0ZXJzLnR4dApp
bmRleCA0Y2ViNDY5MTI0NWIuLmQ5ZWI1ODk1ZWE5ZSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlv
bi9hZG1pbi1ndWlkZS9rZXJuZWwtcGFyYW1ldGVycy50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9h
ZG1pbi1ndWlkZS9rZXJuZWwtcGFyYW1ldGVycy50eHQKQEAgLTk2Myw3ICs5NjMsNyBAQAogCQkJ
Zm9yIGRldGFpbHMuCiAKIAlub21weAkJW1g4Nl0gRGlzYWJsZXMgSW50ZWwgTWVtb3J5IFByb3Rl
Y3Rpb24gRXh0ZW5zaW9ucy4KLQkJCVNlZSBEb2N1bWVudGF0aW9uL3g4Ni9pbnRlbF9tcHgucnN0
IGZvciBtb3JlCisJCQlTZWUgRG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni9pbnRlbF9tcHgucnN0IGZv
ciBtb3JlCiAJCQlpbmZvcm1hdGlvbiBhYm91dCB0aGUgZmVhdHVyZS4KIAogCW5vcGt1CQlbWDg2
XSBEaXNhYmxlIE1lbW9yeSBQcm90ZWN0aW9uIEtleXMgQ1BVIGZlYXR1cmUgZm91bmQKQEAgLTIz
ODAsNyArMjM4MCw3IEBACiAKIAltY2UJCVtYODYtMzJdIE1hY2hpbmUgQ2hlY2sgRXhjZXB0aW9u
CiAKLQltY2U9b3B0aW9uCVtYODYtNjRdIFNlZSBEb2N1bWVudGF0aW9uL3g4Ni94ODZfNjQvYm9v
dC1vcHRpb25zLnJzdAorCW1jZT1vcHRpb24JW1g4Ni02NF0gU2VlIERvY3VtZW50YXRpb24vYXJj
aC94ODYveDg2XzY0L2Jvb3Qtb3B0aW9ucy5yc3QKIAogCW1kPQkJW0hXXSBSQUlEIHN1YnN5c3Rl
bXMgZGV2aWNlcyBhbmQgbGV2ZWwKIAkJCVNlZSBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL21k
LnJzdC4KQEAgLTM1MjYsNyArMzUyNiw3IEBACiAJCQlTZWUgRG9jdW1lbnRhdGlvbi9ibG9ja2Rl
di9wYXJpZGUudHh0LgogCiAJcGlycT0JCVtTTVAsQVBJQ10gTWFudWFsIG1wLXRhYmxlIHNldHVw
Ci0JCQlTZWUgRG9jdW1lbnRhdGlvbi94ODYvaTM4Ni9JTy1BUElDLnJzdC4KKwkJCVNlZSBEb2N1
bWVudGF0aW9uL2FyY2gveDg2L2kzODYvSU8tQVBJQy5yc3QuCiAKIAlwbGlwPQkJW1BQVCxORVRd
IFBhcmFsbGVsIHBvcnQgbmV0d29yayBsaW5rCiAJCQlGb3JtYXQ6IHsgcGFycG9ydDxucj4gfCB0
aW1pZCB8IDAgfQpAQCAtNTA1OCw3ICs1MDU4LDcgQEAKIAkJCUNhbiBiZSB1c2VkIG11bHRpcGxl
IHRpbWVzIGZvciBtdWx0aXBsZSBkZXZpY2VzLgogCiAJdmdhPQkJW0JPT1QsWDg2LTMyXSBTZWxl
Y3QgYSBwYXJ0aWN1bGFyIHZpZGVvIG1vZGUKLQkJCVNlZSBEb2N1bWVudGF0aW9uL3g4Ni9ib290
LnJzdCBhbmQKKwkJCVNlZSBEb2N1bWVudGF0aW9uL2FyY2gveDg2L2Jvb3QucnN0IGFuZAogCQkJ
RG9jdW1lbnRhdGlvbi9zdmdhLnR4dC4KIAkJCVVzZSB2Z2E9YXNrIGZvciBtZW51LgogCQkJVGhp
cyBpcyBhY3R1YWxseSBhIGJvb3QgbG9hZGVyIHBhcmFtZXRlcjsgdGhlIHZhbHVlIGlzCmRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL3Jhcy5yc3QgYi9Eb2N1bWVudGF0aW9u
L2FkbWluLWd1aWRlL3Jhcy5yc3QKaW5kZXggMmIyMGY1ZjczODBkLi4yZDg2ODYyNDU4YWEgMTAw
NjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcmFzLnJzdAorKysgYi9Eb2N1bWVu
dGF0aW9uL2FkbWluLWd1aWRlL3Jhcy5yc3QKQEAgLTE5OSw3ICsxOTksNyBAQCBBcmNoaXRlY3R1
cmUgKE1DQSlcIFsjZjNdXy4KICAgbW9kZSkuCiAKIC4uIFsjZjNdIEZvciBtb3JlIGRldGFpbHMg
YWJvdXQgdGhlIE1hY2hpbmUgQ2hlY2sgQXJjaGl0ZWN0dXJlIChNQ0EpLAotICBwbGVhc2UgcmVh
ZCBEb2N1bWVudGF0aW9uL3g4Ni94ODZfNjQvbWFjaGluZWNoZWNrLnJzdCBhdCB0aGUgS2VybmVs
IHRyZWUuCisgIHBsZWFzZSByZWFkIERvY3VtZW50YXRpb24vYXJjaC94ODYveDg2XzY0L21hY2hp
bmVjaGVjay5yc3QgYXQgdGhlIEtlcm5lbCB0cmVlLgogCiBFREFDIC0gRXJyb3IgRGV0ZWN0aW9u
IEFuZCBDb3JyZWN0aW9uCiAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCmRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2FyY2gveDg2L3g4Nl82NC81bGV2ZWwtcGFnaW5nLnJz
dCBiL0RvY3VtZW50YXRpb24vYXJjaC94ODYveDg2XzY0LzVsZXZlbC1wYWdpbmcucnN0CmluZGV4
IDQ0ODU2NDE3ZTZhNS4uMDAwODA5ODc4NDAzIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2Fy
Y2gveDg2L3g4Nl82NC81bGV2ZWwtcGFnaW5nLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2FyY2gv
eDg2L3g4Nl82NC81bGV2ZWwtcGFnaW5nLnJzdApAQCAtMjAsNyArMjAsNyBAQCBwaHlzaWNhbCBh
ZGRyZXNzIHNwYWNlLiBUaGlzICJvdWdodCB0byBiZSBlbm91Z2ggZm9yIGFueWJvZHkiIMKpLgog
UUVNVSAyLjkgYW5kIGxhdGVyIHN1cHBvcnQgNS1sZXZlbCBwYWdpbmcuCiAKIFZpcnR1YWwgbWVt
b3J5IGxheW91dCBmb3IgNS1sZXZlbCBwYWdpbmcgaXMgZGVzY3JpYmVkIGluCi1Eb2N1bWVudGF0
aW9uL3g4Ni94ODZfNjQvbW0ucnN0CitEb2N1bWVudGF0aW9uL2FyY2gveDg2L3g4Nl82NC9tbS5y
c3QKIAogCiBFbmFibGluZyA1LWxldmVsIHBhZ2luZwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9hcmNoL3g4Ni94ODZfNjQvYm9vdC1vcHRpb25zLnJzdCBiL0RvY3VtZW50YXRpb24vYXJjaC94
ODYveDg2XzY0L2Jvb3Qtb3B0aW9ucy5yc3QKaW5kZXggNmE0Mjg1YTNjN2E0Li4yYTA5MzEyOGIy
OGYgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vYXJjaC94ODYveDg2XzY0L2Jvb3Qtb3B0aW9u
cy5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni94ODZfNjQvYm9vdC1vcHRpb25zLnJz
dApAQCAtOSw3ICs5LDcgQEAgb25seSB0aGUgQU1ENjQgc3BlY2lmaWMgb25lcyBhcmUgbGlzdGVk
IGhlcmUuCiAKIE1hY2hpbmUgY2hlY2sKID09PT09PT09PT09PT0KLVBsZWFzZSBzZWUgRG9jdW1l
bnRhdGlvbi94ODYveDg2XzY0L21hY2hpbmVjaGVjay5yc3QgZm9yIHN5c2ZzIHJ1bnRpbWUgdHVu
YWJsZXMuCitQbGVhc2Ugc2VlIERvY3VtZW50YXRpb24vYXJjaC94ODYveDg2XzY0L21hY2hpbmVj
aGVjay5yc3QgZm9yIHN5c2ZzIHJ1bnRpbWUgdHVuYWJsZXMuCiAKICAgIG1jZT1vZmYKIAkJRGlz
YWJsZSBtYWNoaW5lIGNoZWNrCkBAIC04OSw3ICs4OSw3IEBAIEFQSUNzCiAgICAgIERvbid0IHVz
ZSB0aGUgbG9jYWwgQVBJQyAoYWxpYXMgZm9yIGkzODYgY29tcGF0aWJpbGl0eSkKIAogICAgcGly
cT0uLi4KLQlTZWUgRG9jdW1lbnRhdGlvbi94ODYvaTM4Ni9JTy1BUElDLnJzdAorCVNlZSBEb2N1
bWVudGF0aW9uL2FyY2gveDg2L2kzODYvSU8tQVBJQy5yc3QKIAogICAgbm9hcGljdGltZXIKIAlE
b24ndCBzZXQgdXAgdGhlIEFQSUMgdGltZXIKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYXJj
aC94ODYveDg2XzY0L2Zha2UtbnVtYS1mb3ItY3B1c2V0cy5yc3QgYi9Eb2N1bWVudGF0aW9uL2Fy
Y2gveDg2L3g4Nl82NC9mYWtlLW51bWEtZm9yLWNwdXNldHMucnN0CmluZGV4IDMwMTA4Njg0YWU4
Ny4uZDk2MGY1Y2FjMjU4IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2FyY2gveDg2L3g4Nl82
NC9mYWtlLW51bWEtZm9yLWNwdXNldHMucnN0CisrKyBiL0RvY3VtZW50YXRpb24vYXJjaC94ODYv
eDg2XzY0L2Zha2UtbnVtYS1mb3ItY3B1c2V0cy5yc3QKQEAgLTE4LDcgKzE4LDcgQEAgRm9yIG1v
cmUgaW5mb3JtYXRpb24gb24gdGhlIGZlYXR1cmVzIG9mIGNwdXNldHMsIHNlZQogRG9jdW1lbnRh
dGlvbi9jZ3JvdXAtdjEvY3B1c2V0cy5yc3QuCiBUaGVyZSBhcmUgYSBudW1iZXIgb2YgZGlmZmVy
ZW50IGNvbmZpZ3VyYXRpb25zIHlvdSBjYW4gdXNlIGZvciB5b3VyIG5lZWRzLiAgRm9yCiBtb3Jl
IGluZm9ybWF0aW9uIG9uIHRoZSBudW1hPWZha2UgY29tbWFuZCBsaW5lIG9wdGlvbiBhbmQgaXRz
IHZhcmlvdXMgd2F5cyBvZgotY29uZmlndXJpbmcgZmFrZSBub2Rlcywgc2VlIERvY3VtZW50YXRp
b24veDg2L3g4Nl82NC9ib290LW9wdGlvbnMucnN0LgorY29uZmlndXJpbmcgZmFrZSBub2Rlcywg
c2VlIERvY3VtZW50YXRpb24vYXJjaC94ODYveDg2XzY0L2Jvb3Qtb3B0aW9ucy5yc3QuCiAKIEZv
ciB0aGUgcHVycG9zZXMgb2YgdGhpcyBpbnRyb2R1Y3Rpb24sIHdlJ2xsIGFzc3VtZSBhIHZlcnkg
cHJpbWl0aXZlIE5VTUEKIGVtdWxhdGlvbiBzZXR1cCBvZiAibnVtYT1mYWtlPTQqNTEyLCIuICBU
aGlzIHdpbGwgc3BsaXQgb3VyIHN5c3RlbSBtZW1vcnkgaW50bwpkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2Jvb3Rpbmctd2l0aG91dC1vZi50eHQgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYm9vdGluZy13aXRob3V0LW9mLnR4dAppbmRleCA1OGQ2MDZmY2E3ZWIuLjA2
Njc3OGNiYmRjYiAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jvb3Rpbmct
d2l0aG91dC1vZi50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jvb3Rpbmctd2l0
aG91dC1vZi50eHQKQEAgLTI3Nyw3ICsyNzcsNyBAQCBpdCB3aXRoIHNwZWNpYWwgY2FzZXMuCiAg
IHRoZSBkZWNvbXByZXNzb3IgKHRoZSByZWFsIG1vZGUgZW50cnkgcG9pbnQgZ29lcyB0byB0aGUg
c2FtZSAgMzJiaXQKICAgZW50cnkgcG9pbnQgb25jZSBpdCBzd2l0Y2hlZCBpbnRvIHByb3RlY3Rl
ZCBtb2RlKS4gVGhhdCBlbnRyeSBwb2ludAogICBzdXBwb3J0cyBvbmUgY2FsbGluZyBjb252ZW50
aW9uIHdoaWNoIGlzIGRvY3VtZW50ZWQgaW4KLSAgRG9jdW1lbnRhdGlvbi94ODYvYm9vdC5yc3QK
KyAgRG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni9ib290LnJzdAogICBUaGUgcGh5c2ljYWwgcG9pbnRl
ciB0byB0aGUgZGV2aWNlLXRyZWUgYmxvY2sgKGRlZmluZWQgaW4gY2hhcHRlciBJSSkKICAgaXMg
cGFzc2VkIHZpYSBzZXR1cF9kYXRhIHdoaWNoIHJlcXVpcmVzIGF0IGxlYXN0IGJvb3QgcHJvdG9j
b2wgMi4wOS4KICAgVGhlIHR5cGUgZmlsZWQgaXMgZGVmaW5lZCBhcwpkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9zeXNjdGwva2VybmVsLnR4dCBiL0RvY3VtZW50YXRpb24vc3lzY3RsL2tlcm5l
bC50eHQKaW5kZXggMWIyZmUxN2NkMmZhLi5iM2UzYzU2YmRhYjggMTAwNjQ0Ci0tLSBhL0RvY3Vt
ZW50YXRpb24vc3lzY3RsL2tlcm5lbC50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9zeXNjdGwva2Vy
bmVsLnR4dApAQCAtMTU0LDcgKzE1NCw3IEBAIGlzIDB4MTUgYW5kIHRoZSBmdWxsIHZlcnNpb24g
bnVtYmVyIGlzIDB4MjM0LCB0aGlzIGZpbGUgd2lsbCBjb250YWluCiB0aGUgdmFsdWUgMzQwID0g
MHgxNTQuCiAKIFNlZSB0aGUgdHlwZV9vZl9sb2FkZXIgYW5kIGV4dF9sb2FkZXJfdHlwZSBmaWVs
ZHMgaW4KLURvY3VtZW50YXRpb24veDg2L2Jvb3QucnN0IGZvciBhZGRpdGlvbmFsIGluZm9ybWF0
aW9uLgorRG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni9ib290LnJzdCBmb3IgYWRkaXRpb25hbCBpbmZv
cm1hdGlvbi4KIAogPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT0KIApAQCAtMTY2LDcgKzE2Niw3IEBAIFRoZSBjb21wbGV0ZSBib290
bG9hZGVyIHZlcnNpb24gbnVtYmVyLiAgSW4gdGhlIGV4YW1wbGUgYWJvdmUsIHRoaXMKIGZpbGUg
d2lsbCBjb250YWluIHRoZSB2YWx1ZSA1NjQgPSAweDIzNC4KIAogU2VlIHRoZSB0eXBlX29mX2xv
YWRlciBhbmQgZXh0X2xvYWRlcl92ZXIgZmllbGRzIGluCi1Eb2N1bWVudGF0aW9uL3g4Ni9ib290
LnJzdCBmb3IgYWRkaXRpb25hbCBpbmZvcm1hdGlvbi4KK0RvY3VtZW50YXRpb24vYXJjaC94ODYv
Ym9vdC5yc3QgZm9yIGFkZGl0aW9uYWwgaW5mb3JtYXRpb24uCiAKID09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CiAKZGlmZiAtLWdp
dCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKaW5kZXggODQ0NDhkNTgzOGI3Li5lMWFhNjFj
NzJjYjEgMTAwNjQ0Ci0tLSBhL01BSU5UQUlORVJTCisrKyBiL01BSU5UQUlORVJTCkBAIC0xMzM1
MSw3ICsxMzM1MSw3IEBAIEw6CWxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKIFM6CVN1cHBv
cnRlZAogRjoJYXJjaC94ODYva2VybmVsL2NwdS9yZXNjdHJsLwogRjoJYXJjaC94ODYvaW5jbHVk
ZS9hc20vcmVzY3RybF9zY2hlZC5oCi1GOglEb2N1bWVudGF0aW9uL3g4Ni9yZXNjdHJsKgorRjoJ
RG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni9yZXNjdHJsKgogCiBSRUFELUNPUFkgVVBEQVRFIChSQ1Up
CiBNOgkiUGF1bCBFLiBNY0tlbm5leSIgPHBhdWxtY2tAbGludXguaWJtLmNvbT4KQEAgLTE3MjU4
LDcgKzE3MjU4LDcgQEAgTDoJbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwogVDoJZ2l0IGdp
dDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90aXAvdGlwLmdpdCB4
ODYvY29yZQogUzoJTWFpbnRhaW5lZAogRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3g4Ni8KLUY6CURvY3VtZW50YXRpb24veDg2LworRjoJRG9jdW1lbnRhdGlvbi9hcmNoL3g4
Ni8KIEY6CWFyY2gveDg2LwogCiBYODYgRU5UUlkgQ09ERQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
S2NvbmZpZyBiL2FyY2gvYXJtL0tjb25maWcKaW5kZXggMWIyNzZkZGE4MzdkLi5iMmI4ZDNjMTUy
ODUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL0tjb25maWcKKysrIGIvYXJjaC9hcm0vS2NvbmZpZwpA
QCAtMTI5Myw3ICsxMjkzLDcgQEAgY29uZmlnIFNNUAogCSAgdW5pcHJvY2Vzc29yIG1hY2hpbmVz
LiBPbiBhIHVuaXByb2Nlc3NvciBtYWNoaW5lLCB0aGUga2VybmVsCiAJICB3aWxsIHJ1biBmYXN0
ZXIgaWYgeW91IHNheSBOIGhlcmUuCiAKLQkgIFNlZSBhbHNvIDxmaWxlOkRvY3VtZW50YXRpb24v
eDg2L2kzODYvSU8tQVBJQy5yc3Q+LAorCSAgU2VlIGFsc28gPGZpbGU6RG9jdW1lbnRhdGlvbi9h
cmNoL3g4Ni9pMzg2L0lPLUFQSUMucnN0PiwKIAkgIDxmaWxlOkRvY3VtZW50YXRpb24vbG9ja3Vw
LXdhdGNoZG9ncy50eHQ+IGFuZCB0aGUgU01QLUhPV1RPIGF2YWlsYWJsZSBhdAogCSAgPGh0dHA6
Ly90bGRwLm9yZy9IT1dUTy9TTVAtSE9XVE8uaHRtbD4uCiAKZGlmZiAtLWdpdCBhL2FyY2gveDg2
L0tjb25maWcgYi9hcmNoL3g4Ni9LY29uZmlnCmluZGV4IGRjZTEwYjE4ZjRiYy4uNTQ4OWY0MmUw
MDVlIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9LY29uZmlnCisrKyBiL2FyY2gveDg2L0tjb25maWcK
QEAgLTM5OSw3ICszOTksNyBAQCBjb25maWcgU01QCiAJICBZIHRvICJFbmhhbmNlZCBSZWFsIFRp
bWUgQ2xvY2sgU3VwcG9ydCIsIGJlbG93LiBUaGUgIkFkdmFuY2VkIFBvd2VyCiAJICBNYW5hZ2Vt
ZW50IiBjb2RlIHdpbGwgYmUgZGlzYWJsZWQgaWYgeW91IHNheSBZIGhlcmUuCiAKLQkgIFNlZSBh
bHNvIDxmaWxlOkRvY3VtZW50YXRpb24veDg2L2kzODYvSU8tQVBJQy5yc3Q+LAorCSAgU2VlIGFs
c28gPGZpbGU6RG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni9pMzg2L0lPLUFQSUMucnN0PiwKIAkgIDxm
aWxlOkRvY3VtZW50YXRpb24vbG9ja3VwLXdhdGNoZG9ncy50eHQ+IGFuZCB0aGUgU01QLUhPV1RP
IGF2YWlsYWJsZSBhdAogCSAgPGh0dHA6Ly93d3cudGxkcC5vcmcvZG9jcy5odG1sI2hvd3RvPi4K
IApAQCAtMTMwOCw3ICsxMzA4LDcgQEAgY29uZmlnIE1JQ1JPQ09ERQogCSAgdGhlIExpbnV4IGtl
cm5lbC4KIAogCSAgVGhlIHByZWZlcnJlZCBtZXRob2QgdG8gbG9hZCBtaWNyb2NvZGUgZnJvbSBh
IGRldGFjaGVkIGluaXRyZCBpcyBkZXNjcmliZWQKLQkgIGluIERvY3VtZW50YXRpb24veDg2L21p
Y3JvY29kZS5yc3QuIEZvciB0aGF0IHlvdSBuZWVkIHRvIGVuYWJsZQorCSAgaW4gRG9jdW1lbnRh
dGlvbi9hcmNoL3g4Ni9taWNyb2NvZGUucnN0LiBGb3IgdGhhdCB5b3UgbmVlZCB0byBlbmFibGUK
IAkgIENPTkZJR19CTEtfREVWX0lOSVRSRCBpbiBvcmRlciBmb3IgdGhlIGxvYWRlciB0byBiZSBh
YmxlIHRvIHNjYW4gdGhlCiAJICBpbml0cmQgZm9yIG1pY3JvY29kZSBibG9icy4KIApAQCAtMTM0
Nyw3ICsxMzQ3LDcgQEAgY29uZmlnIE1JQ1JPQ09ERV9PTERfSU5URVJGQUNFCiAJICBJdCBpcyBp
bmFkZXF1YXRlIGJlY2F1c2UgaXQgcnVucyB0b28gbGF0ZSB0byBiZSBhYmxlIHRvIHByb3Blcmx5
CiAJICBsb2FkIG1pY3JvY29kZSBvbiBhIG1hY2hpbmUgYW5kIGl0IG5lZWRzIHNwZWNpYWwgdG9v
bHMuIEluc3RlYWQsIHlvdQogCSAgc2hvdWxkJ3ZlIHN3aXRjaGVkIHRvIHRoZSBlYXJseSBsb2Fk
aW5nIG1ldGhvZCB3aXRoIHRoZSBpbml0cmQgb3IKLQkgIGJ1aWx0aW4gbWljcm9jb2RlIGJ5IG5v
dzogRG9jdW1lbnRhdGlvbi94ODYvbWljcm9jb2RlLnJzdAorCSAgYnVpbHRpbiBtaWNyb2NvZGUg
Ynkgbm93OiBEb2N1bWVudGF0aW9uL2FyY2gveDg2L21pY3JvY29kZS5yc3QKIAogY29uZmlnIFg4
Nl9NU1IKIAl0cmlzdGF0ZSAiL2Rldi9jcHUvKi9tc3IgLSBNb2RlbC1zcGVjaWZpYyByZWdpc3Rl
ciBzdXBwb3J0IgpAQCAtMTQ5Niw3ICsxNDk2LDcgQEAgY29uZmlnIFg4Nl81TEVWRUwKIAkgIEEg
a2VybmVsIHdpdGggdGhlIG9wdGlvbiBlbmFibGVkIGNhbiBiZSBib290ZWQgb24gbWFjaGluZXMg
dGhhdAogCSAgc3VwcG9ydCA0LSBvciA1LWxldmVsIHBhZ2luZy4KIAotCSAgU2VlIERvY3VtZW50
YXRpb24veDg2L3g4Nl82NC81bGV2ZWwtcGFnaW5nLnJzdCBmb3IgbW9yZQorCSAgU2VlIERvY3Vt
ZW50YXRpb24vYXJjaC94ODYveDg2XzY0LzVsZXZlbC1wYWdpbmcucnN0IGZvciBtb3JlCiAJICBp
bmZvcm1hdGlvbi4KIAogCSAgU2F5IE4gaWYgdW5zdXJlLgpAQCAtMTgwMSw3ICsxODAxLDcgQEAg
Y29uZmlnIE1UUlIKIAkgIFlvdSBjYW4gc2FmZWx5IHNheSBZIGV2ZW4gaWYgeW91ciBtYWNoaW5l
IGRvZXNuJ3QgaGF2ZSBNVFJScywgeW91J2xsCiAJICBqdXN0IGFkZCBhYm91dCA5IEtCIHRvIHlv
dXIga2VybmVsLgogCi0JICBTZWUgPGZpbGU6RG9jdW1lbnRhdGlvbi94ODYvbXRyci5yc3Q+IGZv
ciBtb3JlIGluZm9ybWF0aW9uLgorCSAgU2VlIDxmaWxlOkRvY3VtZW50YXRpb24vYXJjaC94ODYv
bXRyci5yc3Q+IGZvciBtb3JlIGluZm9ybWF0aW9uLgogCiBjb25maWcgTVRSUl9TQU5JVElaRVIK
IAlkZWZfYm9vbCB5CkBAIC0xOTEzLDcgKzE5MTMsNyBAQCBjb25maWcgWDg2X0lOVEVMX01QWAog
CSAgcHJvY2VzcyBhbmQgYWRkcyBzb21lIGJyYW5jaGVzIHRvIHBhdGhzIHVzZWQgZHVyaW5nCiAJ
ICBleGVjKCkgYW5kIG11bm1hcCgpLgogCi0JICBGb3IgZGV0YWlscywgc2VlIERvY3VtZW50YXRp
b24veDg2L2ludGVsX21weC5yc3QKKwkgIEZvciBkZXRhaWxzLCBzZWUgRG9jdW1lbnRhdGlvbi9h
cmNoL3g4Ni9pbnRlbF9tcHgucnN0CiAKIAkgIElmIHVuc3VyZSwgc2F5IE4uCiAKZGlmZiAtLWdp
dCBhL2FyY2gveDg2L0tjb25maWcuZGVidWcgYi9hcmNoL3g4Ni9LY29uZmlnLmRlYnVnCmluZGV4
IDcxYzkyZGI0N2M0MS4uODE0MzUzNjY3MDc1IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9LY29uZmln
LmRlYnVnCisrKyBiL2FyY2gveDg2L0tjb25maWcuZGVidWcKQEAgLTE1Niw3ICsxNTYsNyBAQCBj
b25maWcgSU9NTVVfREVCVUcKIAkgIGNvZGUuIFdoZW4geW91IHVzZSBpdCBtYWtlIHN1cmUgeW91
IGhhdmUgYSBiaWcgZW5vdWdoCiAJICBJT01NVS9BR1AgYXBlcnR1cmUuICBNb3N0IG9mIHRoZSBv
cHRpb25zIGVuYWJsZWQgYnkgdGhpcyBjYW4KIAkgIGJlIHNldCBtb3JlIGZpbmVncmFpbmVkIHVz
aW5nIHRoZSBpb21tdT0gY29tbWFuZCBsaW5lCi0JICBvcHRpb25zLiBTZWUgRG9jdW1lbnRhdGlv
bi94ODYveDg2XzY0L2Jvb3Qtb3B0aW9ucy5yc3QgZm9yIG1vcmUKKwkgIG9wdGlvbnMuIFNlZSBE
b2N1bWVudGF0aW9uL2FyY2gveDg2L3g4Nl82NC9ib290LW9wdGlvbnMucnN0IGZvciBtb3JlCiAJ
ICBkZXRhaWxzLgogCiBjb25maWcgSU9NTVVfTEVBSwpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvYm9v
dC9oZWFkZXIuUyBiL2FyY2gveDg2L2Jvb3QvaGVhZGVyLlMKaW5kZXggMmMxMWMwZjQ1ZDQ5Li41
ZWM4MjVjODYzYTYgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2Jvb3QvaGVhZGVyLlMKKysrIGIvYXJj
aC94ODYvYm9vdC9oZWFkZXIuUwpAQCAtMzEzLDcgKzMxMyw3IEBAIHN0YXJ0X3N5c19zZWc6CS53
b3JkCVNZU1NFRwkJIyBvYnNvbGV0ZSBhbmQgbWVhbmluZ2xlc3MsIGJ1dCBqdXN0CiAKIHR5cGVf
b2ZfbG9hZGVyOgkuYnl0ZQkwCQkjIDAgbWVhbnMgYW5jaWVudCBib290bG9hZGVyLCBuZXdlcgog
CQkJCQkjIGJvb3Rsb2FkZXJzIGtub3cgdG8gY2hhbmdlIHRoaXMuCi0JCQkJCSMgU2VlIERvY3Vt
ZW50YXRpb24veDg2L2Jvb3QucnN0IGZvcgorCQkJCQkjIFNlZSBEb2N1bWVudGF0aW9uL2FyY2gv
eDg2L2Jvb3QucnN0IGZvcgogCQkJCQkjIGFzc2lnbmVkIGlkcwogCiAjIGZsYWdzLCB1bnVzZWQg
Yml0cyBtdXN0IGJlIHplcm8gKFJGVSkgYml0IHdpdGhpbiBsb2FkZmxhZ3MKZGlmZiAtLWdpdCBh
L2FyY2gveDg2L2VudHJ5L2VudHJ5XzY0LlMgYi9hcmNoL3g4Ni9lbnRyeS9lbnRyeV82NC5TCmlu
ZGV4IDBlYTQ4MzFhNzJhNC4uOTgxOTUxMTI0ZDUzIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9lbnRy
eS9lbnRyeV82NC5TCisrKyBiL2FyY2gveDg2L2VudHJ5L2VudHJ5XzY0LlMKQEAgLTgsNyArOCw3
IEBACiAgKgogICogZW50cnkuUyBjb250YWlucyB0aGUgc3lzdGVtLWNhbGwgYW5kIGZhdWx0IGxv
dy1sZXZlbCBoYW5kbGluZyByb3V0aW5lcy4KICAqCi0gKiBTb21lIG9mIHRoaXMgaXMgZG9jdW1l
bnRlZCBpbiBEb2N1bWVudGF0aW9uL3g4Ni9lbnRyeV82NC5yc3QKKyAqIFNvbWUgb2YgdGhpcyBp
cyBkb2N1bWVudGVkIGluIERvY3VtZW50YXRpb24vYXJjaC94ODYvZW50cnlfNjQucnN0CiAgKgog
ICogQSBub3RlIG9uIHRlcm1pbm9sb2d5OgogICogLSBpcmV0IGZyYW1lOglBcmNoaXRlY3R1cmUg
ZGVmaW5lZCBpbnRlcnJ1cHQgZnJhbWUgZnJvbSBTUyB0byBSSVAKZGlmZiAtLWdpdCBhL2FyY2gv
eDg2L2luY2x1ZGUvYXNtL2Jvb3RwYXJhbV91dGlscy5oIGIvYXJjaC94ODYvaW5jbHVkZS9hc20v
Ym9vdHBhcmFtX3V0aWxzLmgKaW5kZXggMTAxZWI5NDRmMTNjLi41ODVkYWNhNzY4MmIgMTAwNjQ0
Ci0tLSBhL2FyY2gveDg2L2luY2x1ZGUvYXNtL2Jvb3RwYXJhbV91dGlscy5oCisrKyBiL2FyY2gv
eDg2L2luY2x1ZGUvYXNtL2Jvb3RwYXJhbV91dGlscy5oCkBAIC0yNCw3ICsyNCw3IEBAIHN0YXRp
YyB2b2lkIHNhbml0aXplX2Jvb3RfcGFyYW1zKHN0cnVjdCBib290X3BhcmFtcyAqYm9vdF9wYXJh
bXMpCiAJICogSU1QT1JUQU5UIE5PVEUgVE8gQk9PVExPQURFUiBBVVRIT1JTOiBkbyBub3Qgc2lt
cGx5IGNsZWFyCiAJICogdGhpcyBmaWVsZC4gIFRoZSBwdXJwb3NlIG9mIHRoaXMgZmllbGQgaXMg
dG8gZ3VhcmFudGVlCiAJICogY29tcGxpYW5jZSB3aXRoIHRoZSB4ODYgYm9vdCBzcGVjIGxvY2F0
ZWQgaW4KLQkgKiBEb2N1bWVudGF0aW9uL3g4Ni9ib290LnJzdCAuICBUaGF0IHNwZWMgc2F5cyB0
aGF0IHRoZQorCSAqIERvY3VtZW50YXRpb24vYXJjaC94ODYvYm9vdC5yc3QgLiAgVGhhdCBzcGVj
IHNheXMgdGhhdCB0aGUKIAkgKiAqd2hvbGUqIHN0cnVjdHVyZSBzaG91bGQgYmUgY2xlYXJlZCwg
YWZ0ZXIgd2hpY2ggb25seSB0aGUKIAkgKiBwb3J0aW9uIGRlZmluZWQgYnkgc3RydWN0IHNldHVw
X2hlYWRlciAoYm9vdF9wYXJhbXMtPmhkcikKIAkgKiBzaG91bGQgYmUgY29waWVkIGluLgpkaWZm
IC0tZ2l0IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vcGFnZV82NF90eXBlcy5oIGIvYXJjaC94ODYv
aW5jbHVkZS9hc20vcGFnZV82NF90eXBlcy5oCmluZGV4IDI4OGIwNjU5NTViNy4uNzBkNzFiZGQ3
N2RhIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wYWdlXzY0X3R5cGVzLmgKKysr
IGIvYXJjaC94ODYvaW5jbHVkZS9hc20vcGFnZV82NF90eXBlcy5oCkBAIC00OCw3ICs0OCw3IEBA
CiAKICNkZWZpbmUgX19TVEFSVF9LRVJORUxfbWFwCV9BQygweGZmZmZmZmZmODAwMDAwMDAsIFVM
KQogCi0vKiBTZWUgRG9jdW1lbnRhdGlvbi94ODYveDg2XzY0L21tLnJzdCBmb3IgYSBkZXNjcmlw
dGlvbiBvZiB0aGUgbWVtb3J5IG1hcC4gKi8KKy8qIFNlZSBEb2N1bWVudGF0aW9uL2FyY2gveDg2
L3g4Nl82NC9tbS5yc3QgZm9yIGEgZGVzY3JpcHRpb24gb2YgdGhlIG1lbW9yeSBtYXAuICovCiAK
ICNkZWZpbmUgX19QSFlTSUNBTF9NQVNLX1NISUZUCTUyCiAKZGlmZiAtLWdpdCBhL2FyY2gveDg2
L2luY2x1ZGUvYXNtL3BndGFibGVfNjRfdHlwZXMuaCBiL2FyY2gveDg2L2luY2x1ZGUvYXNtL3Bn
dGFibGVfNjRfdHlwZXMuaAppbmRleCA1MmU1ZjVmMjI0MGQuLmVjM2ZlMzQ4YmJkNCAxMDA2NDQK
LS0tIGEvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV82NF90eXBlcy5oCisrKyBiL2FyY2gv
eDg2L2luY2x1ZGUvYXNtL3BndGFibGVfNjRfdHlwZXMuaApAQCAtMTAzLDcgKzEwMyw3IEBAIGV4
dGVybiB1bnNpZ25lZCBpbnQgcHRyc19wZXJfcDRkOwogI2RlZmluZSBQR0RJUl9NQVNLCSh+KFBH
RElSX1NJWkUgLSAxKSkKIAogLyoKLSAqIFNlZSBEb2N1bWVudGF0aW9uL3g4Ni94ODZfNjQvbW0u
cnN0IGZvciBhIGRlc2NyaXB0aW9uIG9mIHRoZSBtZW1vcnkgbWFwLgorICogU2VlIERvY3VtZW50
YXRpb24vYXJjaC94ODYveDg2XzY0L21tLnJzdCBmb3IgYSBkZXNjcmlwdGlvbiBvZiB0aGUgbWVt
b3J5IG1hcC4KICAqCiAgKiBCZSB2ZXJ5IGNhcmVmdWwgdnMuIEtBU0xSIHdoZW4gY2hhbmdpbmcg
YW55dGhpbmcgaGVyZS4gVGhlIEtBU0xSIGFkZHJlc3MKICAqIHJhbmdlIG11c3Qgbm90IG92ZXJs
YXAgd2l0aCBhbnl0aGluZyBleGNlcHQgdGhlIEtBU0FOIHNoYWRvdyBhcmVhLCB3aGljaApkaWZm
IC0tZ2l0IGEvYXJjaC94ODYva2VybmVsL2NwdS9taWNyb2NvZGUvYW1kLmMgYi9hcmNoL3g4Ni9r
ZXJuZWwvY3B1L21pY3JvY29kZS9hbWQuYwppbmRleCBhMGU1MmJkMDBlY2MuLjE0NjM3NDY1MTAz
NiAxMDA2NDQKLS0tIGEvYXJjaC94ODYva2VybmVsL2NwdS9taWNyb2NvZGUvYW1kLmMKKysrIGIv
YXJjaC94ODYva2VybmVsL2NwdS9taWNyb2NvZGUvYW1kLmMKQEAgLTU5LDcgKzU5LDcgQEAgc3Rh
dGljIHU4IGFtZF91Y29kZV9wYXRjaFtQQVRDSF9NQVhfU0laRV07CiAKIC8qCiAgKiBNaWNyb2Nv
ZGUgcGF0Y2ggY29udGFpbmVyIGZpbGUgaXMgcHJlcGVuZGVkIHRvIHRoZSBpbml0cmQgaW4gY3Bp
bwotICogZm9ybWF0LiBTZWUgRG9jdW1lbnRhdGlvbi94ODYvbWljcm9jb2RlLnJzdAorICogZm9y
bWF0LiBTZWUgRG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni9taWNyb2NvZGUucnN0CiAgKi8KIHN0YXRp
YyBjb25zdCBjaGFyCiB1Y29kZV9wYXRoW10gX19tYXliZV91bnVzZWQgPSAia2VybmVsL3g4Ni9t
aWNyb2NvZGUvQXV0aGVudGljQU1ELmJpbiI7CmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9rZXJuZWwv
a2V4ZWMtYnppbWFnZTY0LmMgYi9hcmNoL3g4Ni9rZXJuZWwva2V4ZWMtYnppbWFnZTY0LmMKaW5k
ZXggNWViY2QwMmNiY2E3Li4xMDhkNzJiY2ZhMjggMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2tlcm5l
bC9rZXhlYy1iemltYWdlNjQuYworKysgYi9hcmNoL3g4Ni9rZXJuZWwva2V4ZWMtYnppbWFnZTY0
LmMKQEAgLTQxOSw3ICs0MTksNyBAQCBzdGF0aWMgdm9pZCAqYnpJbWFnZTY0X2xvYWQoc3RydWN0
IGtpbWFnZSAqaW1hZ2UsIGNoYXIgKmtlcm5lbCwKIAllZmlfbWFwX29mZnNldCA9IHBhcmFtc19j
bWRsaW5lX3N6OwogCWVmaV9zZXR1cF9kYXRhX29mZnNldCA9IGVmaV9tYXBfb2Zmc2V0ICsgQUxJ
R04oZWZpX21hcF9zeiwgMTYpOwogCi0JLyogQ29weSBzZXR1cCBoZWFkZXIgb250byBib290cGFy
YW1zLiBEb2N1bWVudGF0aW9uL3g4Ni9ib290LnJzdCAqLworCS8qIENvcHkgc2V0dXAgaGVhZGVy
IG9udG8gYm9vdHBhcmFtcy4gRG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni9ib290LnJzdCAqLwogCXNl
dHVwX2hlYWRlcl9zaXplID0gMHgwMjAyICsga2VybmVsWzB4MDIwMV0gLSBzZXR1cF9oZHJfb2Zm
c2V0OwogCiAJLyogSXMgdGhlcmUgYSBsaW1pdCBvbiBzZXR1cCBoZWFkZXIgc2l6ZT8gKi8KZGlm
ZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9wY2ktZG1hLmMgYi9hcmNoL3g4Ni9rZXJuZWwvcGNp
LWRtYS5jCmluZGV4IGY2MmI0OThiMThmYi4uYTM0YzcyZTkyNGVjIDEwMDY0NAotLS0gYS9hcmNo
L3g4Ni9rZXJuZWwvcGNpLWRtYS5jCisrKyBiL2FyY2gveDg2L2tlcm5lbC9wY2ktZG1hLmMKQEAg
LTcwLDcgKzcwLDcgQEAgdm9pZCBfX2luaXQgcGNpX2lvbW11X2FsbG9jKHZvaWQpCiB9CiAKIC8q
Ci0gKiBTZWUgPERvY3VtZW50YXRpb24veDg2L3g4Nl82NC9ib290LW9wdGlvbnMucnN0PiBmb3Ig
dGhlIGlvbW11IGtlcm5lbAorICogU2VlIDxEb2N1bWVudGF0aW9uL2FyY2gveDg2L3g4Nl82NC9i
b290LW9wdGlvbnMucnN0PiBmb3IgdGhlIGlvbW11IGtlcm5lbAogICogcGFyYW1ldGVyIGRvY3Vt
ZW50YXRpb24uCiAgKi8KIHN0YXRpYyBfX2luaXQgaW50IGlvbW11X3NldHVwKGNoYXIgKnApCmRp
ZmYgLS1naXQgYS9hcmNoL3g4Ni9tbS90bGIuYyBiL2FyY2gveDg2L21tL3RsYi5jCmluZGV4IDRk
ZTk3MDRjNGFhZi4uODU1NDk4YWI0NDUzIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9tbS90bGIuYwor
KysgYi9hcmNoL3g4Ni9tbS90bGIuYwpAQCAtNzEyLDcgKzcxMiw3IEBAIHZvaWQgbmF0aXZlX2Zs
dXNoX3RsYl9vdGhlcnMoY29uc3Qgc3RydWN0IGNwdW1hc2sgKmNwdW1hc2ssCiB9CiAKIC8qCi0g
KiBTZWUgRG9jdW1lbnRhdGlvbi94ODYvdGxiLnJzdCBmb3IgZGV0YWlscy4gIFdlIGNob29zZSAz
MworICogU2VlIERvY3VtZW50YXRpb24vYXJjaC94ODYvdGxiLnJzdCBmb3IgZGV0YWlscy4gIFdl
IGNob29zZSAzMwogICogYmVjYXVzZSBpdCBpcyBsYXJnZSBlbm91Z2ggdG8gY292ZXIgdGhlIHZh
c3QgbWFqb3JpdHkgKGF0CiAgKiBsZWFzdCA5NSUpIG9mIGFsbG9jYXRpb25zLCBhbmQgaXMgc21h
bGwgZW5vdWdoIHRoYXQgd2UgYXJlCiAgKiBjb25maWRlbnQgaXQgd2lsbCBub3QgY2F1c2UgdG9v
IG11Y2ggb3ZlcmhlYWQuICBFYWNoIHNpbmdsZQpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvcGxhdGZv
cm0vcHZoL2VubGlnaHRlbi5jIGIvYXJjaC94ODYvcGxhdGZvcm0vcHZoL2VubGlnaHRlbi5jCmlu
ZGV4IGMwYTUwMmY3ZTNhNy4uMTVhNzRkYmM5YjAwIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9wbGF0
Zm9ybS9wdmgvZW5saWdodGVuLmMKKysrIGIvYXJjaC94ODYvcGxhdGZvcm0vcHZoL2VubGlnaHRl
bi5jCkBAIC04Niw3ICs4Niw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBpbml0X3B2aF9ib290cGFy
YW1zKGJvb2wgeGVuX2d1ZXN0KQogCX0KIAogCS8qCi0JICogU2VlIERvY3VtZW50YXRpb24veDg2
L2Jvb3QucnN0LgorCSAqIFNlZSBEb2N1bWVudGF0aW9uL2FyY2gveDg2L2Jvb3QucnN0LgogCSAq
CiAJICogVmVyc2lvbiAyLjEyIHN1cHBvcnRzIFhlbiBlbnRyeSBwb2ludCBidXQgd2Ugd2lsbCB1
c2UgZGVmYXVsdCB4ODYvUEMKIAkgKiBlbnZpcm9ubWVudCAoaS5lLiBoYXJkd2FyZV9zdWJhcmNo
IDApLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy92aG9zdC92aG9zdC5jIGIvZHJpdmVycy92aG9zdC92
aG9zdC5jCmluZGV4IGZmODg5MmMzODY2Ni4uZjVjMTg2OGQ1ZDVmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL3Zob3N0L3Zob3N0LmMKKysrIGIvZHJpdmVycy92aG9zdC92aG9zdC5jCkBAIC0xNzExLDcg
KzE3MTEsNyBAQCBFWFBPUlRfU1lNQk9MX0dQTCh2aG9zdF9kZXZfaW9jdGwpOwogCiAvKiBUT0RP
OiBUaGlzIGlzIHJlYWxseSBpbmVmZmljaWVudC4gIFdlIG5lZWQgc29tZXRoaW5nIGxpa2UgZ2V0
X3VzZXIoKQogICogKGluc3RydWN0aW9uIGRpcmVjdGx5IGFjY2Vzc2VzIHRoZSBkYXRhLCB3aXRo
IGFuIGV4Y2VwdGlvbiB0YWJsZSBlbnRyeQotICogcmV0dXJuaW5nIC1FRkFVTFQpLiBTZWUgRG9j
dW1lbnRhdGlvbi94ODYvZXhjZXB0aW9uLXRhYmxlcy5yc3QuCisgKiByZXR1cm5pbmcgLUVGQVVM
VCkuIFNlZSBEb2N1bWVudGF0aW9uL2FyY2gveDg2L2V4Y2VwdGlvbi10YWJsZXMucnN0LgogICov
CiBzdGF0aWMgaW50IHNldF9iaXRfdG9fdXNlcihpbnQgbnIsIHZvaWQgX191c2VyICphZGRyKQog
ewpkaWZmIC0tZ2l0IGEvc2VjdXJpdHkvS2NvbmZpZyBiL3NlY3VyaXR5L0tjb25maWcKaW5kZXgg
MDZhMzA4NTE1MTFhLi5kMjZkOWYyMDU0NDEgMTAwNjQ0Ci0tLSBhL3NlY3VyaXR5L0tjb25maWcK
KysrIGIvc2VjdXJpdHkvS2NvbmZpZwpAQCAtNjMsNyArNjMsNyBAQCBjb25maWcgUEFHRV9UQUJM
RV9JU09MQVRJT04KIAkgIGVuc3VyaW5nIHRoYXQgdGhlIG1ham9yaXR5IG9mIGtlcm5lbCBhZGRy
ZXNzZXMgYXJlIG5vdCBtYXBwZWQKIAkgIGludG8gdXNlcnNwYWNlLgogCi0JICBTZWUgRG9jdW1l
bnRhdGlvbi94ODYvcHRpLnJzdCBmb3IgbW9yZSBkZXRhaWxzLgorCSAgU2VlIERvY3VtZW50YXRp
b24vYXJjaC94ODYvcHRpLnJzdCBmb3IgbW9yZSBkZXRhaWxzLgogCiBjb25maWcgU0VDVVJJVFlf
SU5GSU5JQkFORAogCWJvb2wgIkluZmluaWJhbmQgU2VjdXJpdHkgSG9va3MiCmRpZmYgLS1naXQg
YS90b29scy9pbmNsdWRlL2xpbnV4L2Vyci5oIGIvdG9vbHMvaW5jbHVkZS9saW51eC9lcnIuaApp
bmRleCAyNWYyYmIzYTk5MWQuLjMzMmI5ODNlYWQxZSAxMDA2NDQKLS0tIGEvdG9vbHMvaW5jbHVk
ZS9saW51eC9lcnIuaAorKysgYi90b29scy9pbmNsdWRlL2xpbnV4L2Vyci5oCkBAIC0yMCw3ICsy
MCw3IEBACiAgKiBVc2Vyc3BhY2Ugbm90ZToKICAqIFRoZSBzYW1lIHByaW5jaXBsZSB3b3JrcyBm
b3IgdXNlcnNwYWNlLCBiZWNhdXNlICdlcnJvcicgcG9pbnRlcnMKICAqIGZhbGwgZG93biB0byB0
aGUgdW51c2VkIGhvbGUgZmFyIGZyb20gdXNlciBzcGFjZSwgYXMgZGVzY3JpYmVkCi0gKiBpbiBE
b2N1bWVudGF0aW9uL3g4Ni94ODZfNjQvbW0ucnN0IGZvciB4ODZfNjQgYXJjaDoKKyAqIGluIERv
Y3VtZW50YXRpb24vYXJjaC94ODYveDg2XzY0L21tLnJzdCBmb3IgeDg2XzY0IGFyY2g6CiAgKgog
ICogMDAwMDAwMDAwMDAwMDAwMCAtIDAwMDA3ZmZmZmZmZmZmZmYgKD00NyBiaXRzKSB1c2VyIHNw
YWNlLCBkaWZmZXJlbnQgcGVyIG1tIGhvbGUgY2F1c2VkIGJ5IFs0ODo2M10gc2lnbiBleHRlbnNp
b24KICAqIGZmZmZmZmZmZmZlMDAwMDAgLSBmZmZmZmZmZmZmZmZmZmZmICg9MiBNQikgdW51c2Vk
IGhvbGUKZGlmZiAtLWdpdCBhL3Rvb2xzL29ianRvb2wvRG9jdW1lbnRhdGlvbi9zdGFjay12YWxp
ZGF0aW9uLnR4dCBiL3Rvb2xzL29ianRvb2wvRG9jdW1lbnRhdGlvbi9zdGFjay12YWxpZGF0aW9u
LnR4dAppbmRleCBkZTA5NDY3MDA1MGIuLjg3YjZiNGQxMTc1YSAxMDA2NDQKLS0tIGEvdG9vbHMv
b2JqdG9vbC9Eb2N1bWVudGF0aW9uL3N0YWNrLXZhbGlkYXRpb24udHh0CisrKyBiL3Rvb2xzL29i
anRvb2wvRG9jdW1lbnRhdGlvbi9zdGFjay12YWxpZGF0aW9uLnR4dApAQCAtMjEsNyArMjEsNyBA
QCBpbnN0cnVjdGlvbnMpLiAgU2ltaWxhcmx5LCBpdCBrbm93cyBob3cgdG8gZm9sbG93IHN3aXRj
aCBzdGF0ZW1lbnRzLCBmb3IKIHdoaWNoIGdjYyBzb21ldGltZXMgdXNlcyBqdW1wIHRhYmxlcy4K
IAogKE9ianRvb2wgYWxzbyBoYXMgYW4gJ29yYyBnZW5lcmF0ZScgc3ViY29tbWFuZCB3aGljaCBn
ZW5lcmF0ZXMgZGVidWdpbmZvCi1mb3IgdGhlIE9SQyB1bndpbmRlci4gIFNlZSBEb2N1bWVudGF0
aW9uL3g4Ni9vcmMtdW53aW5kZXIucnN0IGluIHRoZQorZm9yIHRoZSBPUkMgdW53aW5kZXIuICBT
ZWUgRG9jdW1lbnRhdGlvbi9hcmNoL3g4Ni9vcmMtdW53aW5kZXIucnN0IGluIHRoZQoga2VybmVs
IHRyZWUgZm9yIG1vcmUgZGV0YWlscy4pCiAKIApAQCAtMTAxLDcgKzEwMSw3IEBAIGIpIE9SQyAo
T29wcyBSZXdpbmQgQ2FwYWJpbGl0eSkgdW53aW5kIHRhYmxlIGdlbmVyYXRpb24KICAgIGJhbmQu
ICBTbyBpdCBkb2Vzbid0IGFmZmVjdCBydW50aW1lIHBlcmZvcm1hbmNlIGFuZCBpdCBjYW4gYmUK
ICAgIHJlbGlhYmxlIGV2ZW4gd2hlbiBpbnRlcnJ1cHRzIG9yIGV4Y2VwdGlvbnMgYXJlIGludm9s
dmVkLgogCi0gICBGb3IgbW9yZSBkZXRhaWxzLCBzZWUgRG9jdW1lbnRhdGlvbi94ODYvb3JjLXVu
d2luZGVyLnJzdC4KKyAgIEZvciBtb3JlIGRldGFpbHMsIHNlZSBEb2N1bWVudGF0aW9uL2FyY2gv
eDg2L29yYy11bndpbmRlci5yc3QuCiAKIGMpIEhpZ2hlciBsaXZlIHBhdGNoaW5nIGNvbXBhdGli
aWxpdHkgcmF0ZQogCi0tIAoyLjE5LjEuODU2Lmc4ODU4NDQ4YmIKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QK
bGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
